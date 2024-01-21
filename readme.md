# Requirements

You're now expected to run the full process. We've exercised creating a simple github action workflow, and then ran tests and deployed to DockerHub. Now we want a full process with unit and integration tests, and the tests should run on the Docker container, and the image should be pushed to DockerHub once all tests are passed. Below are the steps.

- Using the Github repo (https://github.com/KHEfreiIntervenant/ci-cd-with-github-actions), fork it to your own Github account, clone it locally, and create a github action workflow file.
- Configure the app to run using docker
- write 2 unit tests and an integration test, similar to how we did in the previous session
- configure your github workflow to run the unit and integration tests on the Docker container
- after the tests pass, push the image to Dockerhub
- Your deliverable is a screenshot of your uploaded image to Dockerhub, a link to your dockerhub repo, a screenshot of your executed github pipeline, your github workflow config file, and your unit/integration test files.

test
