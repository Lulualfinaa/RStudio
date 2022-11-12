//manipulasi data jumlah penumpang berdasarkan group sex
data1 = data_lulu[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
sex=data1.groupby('Sex')['Name'].nunique()
print('Jumlah sex:\n', sex)

//filter data penumpang yang selamat berdasarkan sex
data2 = data_lulu[['Name', 'Sex', 'Age', 'Pclass', 'Fare']]
notsurvivedpassanger=data2['Sex'].loc[data_lulu['Survived']==0]
print('Penumpang yang tidak survived:\n', notsurvivedpassanger.value_counts())
survivedpassanger=data2['Sex'].loc[data_lulu['Survived']==1]
print('\nPenumpang yang survived:\n', survivedpassanger.value_counts())
