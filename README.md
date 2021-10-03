# ml-as-service
Machine learning model as service with flask and Docker 

Steps:

1) Train ypur model and prepare .pk file 
    a) Run "python3 model_generator.py"  before running docker , it will create train your model and store as .pk file 

2) Create flask script to read trained model and generate results as requested
    #Docker build 
      docker build . -t mlservice

    #Docker Run
      docker run -p 8000:5000 mlservice

    #Check Results on curl or browser
      curl "http://localhost:8000/classify/?sl=5.1&sw=3.5&pl=1.4&pw=0.3"
      
Enjoy !!!







