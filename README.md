# Hand-written-Digit-Recognition
Automated handwritten digit recognition is widely used today - from recognizing zip codes (postal codes) on mail envelopes to recognizing amounts written on bank checks.
The task here it to use the one vs all classifier to detect , map and recognize the hand written digits.
ex3.m ia the main script where data is loaded and required functions are called to build the classifier.
lrcostfunction.m computes the cost and gradient for regularized logistic regression .
onensall.m implements one-vs-all classification by training multiple regularized logistic regression classifiers, one for each of the K classes in our dataset. 
In the handwritten digits dataset,K = 10.
After training  one-vs-all classifier, we can now use it to predict the digit contained in a given image. 
For each input, we should compute the “probability” that it belongs to each class using the trained logistic regression
classifiers. 
predictonevsall.m picks the class for which the corresponding logistic regression classifier outputs the highest probability and return the class label (1, 2,..., or K) as the prediction for the input example.

