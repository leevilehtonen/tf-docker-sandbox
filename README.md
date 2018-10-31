# tf-docker-sandbox

Tf-docker-sandbox is a wrapper project to run TensorFlow containers with Jupyter notebooks or with your own custom Python scripts. Purpose is to provide always up-to-date deep learning platform with common machine learning libraries ready for rapid and easy prototyping.

## Getting Started

These instructions will show the three primary use cases and how to run them on your local machine.

### Prerequisites

You need to have Node with NPM and Docker installed to your machine so that following commands work:

```
npm -v
docker -v
```

### Running

When running first time any of the below commands it will take some time as the TensorFlow base image has rather large file size.

#### TensorFlow container with Jupyter notebook

You can quickly start TensorFlow container with Jupyter notebook on port `8888` with predefined TensorFlow image by running:

```sh
npm run start
```

#### TensorFlow container with custom Jupyter notebooks

Incase you want use your existing notebooks, add them to `/notebooks` folder. You can then start the container with custom Jupyter notebooks on port `8888` by running:

```sh
npm run start:jupyter
```

#### TensorFlow container with custom script

Once you are done with Jupyter prototyping, you can then develop your experiments to runnable Python app to `src` folder and add dependencies to `requirements.txt`. The script can be then run in the TensorFlow container by running:

```sh
npm run start:script
```

#### Clean

If you have been spamming npm run command especially the once which require docker building, there's a chance that you'll end up lots of `<none>` images. You can remove the dangling images by running:

```sh
npm run clean
```

Follwoing command will run
`docker rmi $(docker images -f dangling=true -q)`

## Note

1. Docker is used to create isolated TensorFlow containers, so docker commands can and should be used to further manage containers
2. containers are run with `--rm` flag so they will be removed once closed, meaning all data inside the containers will be lost. <b>If you want to persist your notebooks, download them via Jupyter GUI to e.g. `/notebooks` folder</b>. `--rm` flag can be also removed from `docker run` commands inside `package.json` to enable start and stop without removing the container
3. on script mode `app.py` is used as a starting point inside container
4. if there's any Python dependencies on your custom Jupyter notebook or on your script, add them to `requirements.txt`

## Built With

- [TensorFlow](https://www.tensorflow.org) - An open source machine learning framework used
- [Docker](https://www.docker.com) - Container platform used
- [Node + NPM](https://nodejs.org) - JavaScript runtime built on Chrome's V8 JavaScript engine

## Contributing

Feel free to make any pull request or raise ideas/issues for further development. Idea of this project is to keep isolated sandbox for doing deep learning experiments with always up-to-date libraries, so this project should be kept simple.

## Authors

- **Leevi Lehtonen** - _Initial work_ - [leevilehtonen](https://github.com/leevilehtonen)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details
