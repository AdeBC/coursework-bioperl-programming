'''
# 3.1
def total(array):
	return sum([item for item in array])

# from perl 3.1

fred=[1,3,5,7,9]
fred_total= total(fred)
print('The total of {} is {}'.format(' '.join(map(str,fred)), fred_total))
data=input('Enter some numbers that separated by Space:\n')
user_total=total(map(int,data.split(' ')))
print('The total of those numbers is {}'.format(user_total))


# 3.2
def getarray():
	list=[]
	for i in range(1001): list.append(i)
	return list


print(total(getarray()))

# 3.3
def getaverage(array):
	return total(array)/len(array)
def above_average(array):
	ave=getaverage(array); list=[]
	for i in array: 
		if i > ave: list.append(i)
	return list
# from perl 3.3

fred= above_average([i for i in range(1,11)])
print('fred is {}'.format(' '.join(map(str,fred))))
print('should be 6 7 8 9 10\n')
array=[i for i in range(1,11)]; array.append(100)
barney= above_average(array)
print('barney is {}'.format(' '.join(map(str,barney))))
print('Should be just 100')

'''
# 3.4
f= open('form_test','r'); lines=f.readlines(); f.close; l=0
for line in lines:
	line=line.split() 
	print('{} {:.2f} {} {:E} {:X}'.format(l+1, float(line[0]), str(line[1])[0:10], float(line[2]), int(float(line[3]))))
	l=l+1

