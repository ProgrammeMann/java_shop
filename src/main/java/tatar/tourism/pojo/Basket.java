package tatar.tourism.pojo;

import org.omg.PortableInterceptor.INACTIVE;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by programmemann on 10.11.16.
 */
public class Basket {
    //TODO:если будет время, то изменить добавление товара несколько раз
    //Либо оставить количество товаров всегда 1 (делаем Set)
    //Либо Map <Integer, Goods> - где Integer - кол-во товаров
    private List<Integer> goods;
    public Basket()
    {
        this.goods = new ArrayList<>();
    }

    public void addGood(Integer goodId){

            goods.add(goodId);


    }

    public void dropBasket(){
        goods.removeAll(goods);
    }

    public void deleteGood(Integer goodId){
        goods.remove(goodId);
    }

    public List<Integer> getGoods() {
        return goods;
    }


    public void setGoods(List<Integer> goods) {
        this.goods = goods;
    }
}
