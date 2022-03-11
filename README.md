#A production setup for React using Nginx and Docker.

The test react project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).


Swap out `test-app` with your react project.

Edit `Dockerfile`, replacing `test-app` with the name of the folder containing your react project. Optionally, change `RUN npm run build --prod` to your app's build command.


Run `docker-compose up`. App will be viewable at `http://localhost`