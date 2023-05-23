import numpy as np
import matplotlib.pyplot as plt
from tensorflow import keras
from keras import Sequential, layers


x = np.array([2, 4, 6, 8, 10, 12, 14])
y = np.array([0, 0, 0, 1, 1, 1, 1])

model = Sequential()
model.add(layers.Dense(1, input_dim = 1, activation = 'sigmoid'))
# 교차 엔트로피 오차함수를 이용하기위해 'bianry_crossentropy'로 설정
model.compile(optimizer='sgd', loss = 'binary_crossentropy')
model.fit(x, y, epochs=5000)

#그래프 확인
plt.scatter(x, y)
plt.plot(x, model.predict(x), 'r')
plt.show()

#임의의 학습 시간을 집어넣어 합격 예상 확률을 예측
hour = 7
prediction = model.predict([hour])
print(f"{hour:.f}시간을 공부할 경우, 합격 예상 확률은 {prediction * 100:.2f}입니다.")