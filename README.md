# github-repo-1
## This repo has solutions for challenges 1 - 4
## Contents:
- null provider -> Defines resources that dont manage infrastructyure, but instead run local scripts, triggers or local-exec commands
- random provider (including random_pet) -> Generate managed randomness, meaning that it generates random values during the creation of resources and then hold thos values steady until inputs are changed
- count / count.index -> A meta-argument that creates specific number of instances for a given resource. Each instance is represented by its unique count.index value.

## What does this Terraform project have?
This Terraform configuration makes use of the null and random providers, together with the count meta-argument and the use of variables.
After executing terraform apply the project creates 3 random_pet resources and 3 null_resources, by using the count meta-argument for both resource types. The number 3 is taken from the variables.tf file and its default value is used (3). Each of the 3 null resources execute a local-exec provioners to output in the terminal the random_pet name value for the same count.index.

