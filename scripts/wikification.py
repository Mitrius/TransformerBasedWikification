from tensor2tensor.data_generators import problem
from tensor2tensor.data_generators import text_problems
from tensor2tensor.utils import registry
import re


@registry.register_problem
class Wikification(text_problems.Text2TextProblem):
    @property
    def approx_vocab_size(self):
        return 24638

    @property
    def is_generate_per_split(self):
        # generate_data will shard the data into TRAIN and EVAL for us.
        return False

    @property
    def dataset_splits(self):
        """Splits of data to produce and number of output shards for each."""
        # 10% evaluation data
        return [{
            "split": problem.DatasetSplit.TRAIN,
            "shards": 9,
        }, {
            "split": problem.DatasetSplit.EVAL,
            "shards": 1,
        }]

    def generate_samples(self, data_dir, tmp_dir, dataset_split):
        del data_dir
        del tmp_dir
        del dataset_split

        with open("data/clean.csv") as data_clean, open("data/marked.csv") as data_marked:
            for input_line, target_line in zip(data_marked, data_clean):
                yield {"inputs": re.sub("[^a-z ]+", " ", input_line.strip().lower()),
                       "targets": re.sub("[^a-z ]+", " ", target_line.strip().lower())}
