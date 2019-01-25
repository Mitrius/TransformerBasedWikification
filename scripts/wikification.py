from tensor2tensor.data_generators import problem
from tensor2tensor.data_generators import text_problems
from tensor2tensor.utils import registry
import re


@registry.register_problem
class Wikification(text_problems.Text2TextProblem):
    @property
    def approx_vocab_size(self):
        return 12003

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

        with open("data/input.csv") as input:
            for line in input:
                line_out = line.strip().split(',')
                yield {"inputs": re.sub("[^a-z ]+", " ", line_out[0]),
                       "targets": re.sub("[^a-z ]+", " ", line[1])}
