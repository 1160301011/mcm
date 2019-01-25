from random import random, sample
from math import pow
import math
def havesin(x):
    return (math.sin(x/2) ** 2)
def cal_dist(core: tuple, dot: tuple):
    """
    计算两个点之间的欧氏距离
    :param core: 质心坐标 (x,y) 类型为tuple
    :param dot:  要计算距离的点(m,n) 类型为tuple
    :return: 距离 dist 类型为float
    """
    lat1=dot[0]*math.pi/180
    lon1 = dot[1] * math.pi / 180
    lat2=core[0]*math.pi/180
    lon2 = core[1] * math.pi / 180
    h=havesin(abs(lat1-lat2))+math.cos(lat1)* math.cos(lat2)* havesin(abs(lon1-lon2))
    dist=2*6378.137*math.asin(math.sqrt(h))
    #dist = pow(((dot[0] - core[0]) ** 2 + (dot[1] - core[1]) ** 2), 0.5)
    # if dist == 0:
    #     print("00000000000", dot)
    return dist


def cal_cluster(dot: tuple, cores: list):
    """
    计算给定点应该指派到哪一个质心
    :param dot: 待处理的点
    :param cores: 质心列表
    :return: 应该指派到的质心的序号
    """
    distance_list = []
    for core in cores:
        dist = cal_dist(core, dot)
        distance_list.append(dist)

    min_dist = min(distance_list)
    put_to_index = distance_list.index(min_dist)
    return put_to_index


def init_cores(row_data: list, k: int):
    """
    根据原始数据生成初始质心
    :param row_data: 原始数据
    :param k: k值
    :return: 质心列表
    """
    cores = sample(row_data, k)
    return cores


def put_dot_into_clusters(row_data: list, k: int, cores: list):
    """
    将点指派至最近质心的簇
    :param cores:
    :param row_data:
    :param k:
    :return: 已分配点的簇
    """
    clusters = []
    for each in range(k):
        clusters.append(set())

    for each_data in row_data:
        index = cal_cluster(each_data, cores)
        clusters[index].add(each_data)

    return clusters


def re_cal_core(cluster: set):
    """
    计算当前簇的下一个质心
    :param cluster:
    :return:
    """
    all_x = []
    all_y = []
    for each_dot in cluster:
        all_x.append(each_dot[0])
        all_y.append(each_dot[1])
    avg_x = sum(all_x) / len(all_x)
    avg_y = sum(all_y) / len(all_y)
    new_core = (round(avg_x, 2), round(avg_y, 2))
    return new_core


if __name__ == '__main__':
    # 生成n个点
    data_list = []
    adot=(18.33, -65.65)
    data_list.append(adot)
    adot = (18.22, -66.03)
    data_list.append(adot)
    adot = (18.44, -66.07)
    data_list.append(adot)
    adot = (18.40, -66.16)
    data_list.append(adot)
    adot = (18.47, -66.73)
    data_list.append(adot)
    """
    for num in range(10):
        adot = (round(random() * 20 - 100, 2), round(random() * 20 - 100, 2))
        data_list.append(adot)

    for num in range(100):
        adot = (round(random() * 100 + 100, 2), round(random() * 50 + 150, 2))
        data_list.append(adot)

    for num in range(50):
        adot = (round(random() * 20, 2), round(random() * 20, 2))
        data_list.append(adot)

    for num in range(50):
        adot = (round(random() * 100 + 100, 2), round(random() * 20, 2))
        data_list.append(adot)

    for num in range(100):
        adot = (round(random() * 200, 2), round(random() * 200, 2))
        data_list.append(adot)
    """
    print(data_list)
    # 设置k值
    k = 3
    # 生成初始质心
    my_cores = init_cores(data_list, k)
    print("初始质心：")
    print(my_cores)

    roundx = 0
    while True:
        roundx += 1
        # 指派
        cl = put_dot_into_clusters(data_list, k, my_cores)
        print("第{}次迭代".format(roundx))
        print("簇：")
        for cluster in cl:
            print(cluster)

        # 重新计算质心
        new_cores = list()
        for index in range(k):
            new_cores.append(re_cal_core(cl[index]))
        print("质心：")
        print(new_cores)

        print('-' * 100)
        if new_cores == my_cores:
            break
        else:
            my_cores = new_cores

    import matplotlib.pyplot as plt
    colors = ['#0000FF', '#FF0000', '#00FF00', '#666666', '#FFFF00']
    for index in range(k):
        color = colors[index % 5]
        for each_dot in cl[index]:
            plt.scatter(each_dot[0], each_dot[1], c=color, alpha=0.5)
        plt.scatter(my_cores[index][0], my_cores[index][1], marker='+', c='#000000', s=180)
    plt.savefig('4.png')
    plt.show()
