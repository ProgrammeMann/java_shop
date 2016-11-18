package tatar.tourism.pojo;

/**
 * Created by Ilya Evlampiev on 10.11.2015.
 * @author Ilya Evlampiev
 * <br>
 * POJO Model of Picture. Defines the photo coordinates and shot direction in degrees, description, owner user, original filename and upload time.
 * <br>
 * Модель изображения. Определяет координаты фотографии, направление съемки, описания, хозяина изображения, изначальное название файла и время загрузки.
 */
public class Picture {
    int id;
    /**
     * Original filename
     */
    String originName;
    /**
     * Upload Date
     */
    String uploadDate;
    /**
     * User that owns this picture
     */
    User uploader;
    /**
     * Textual description
     */
    String description;
    /**
     * Geographical latitude
     * <br>
     * Географическая широта
     */
    Float coordinateLat;
    /**
     * Geographical longitude
     * <br>
     * Географическая долгота
     */
    Float coordinateLong;
    /**
     * Shot degree in degrees, counted from the North clockwise
     * <br>
     * Угол съемки, отсчитываемый от направления на север по часовой стрелке (0..90..180), для направлений против часовой (0..-90..180)
     */
    Double degree;

    public String getOriginName() {
        return originName;
    }

    public void setOriginName(String originName) {
        this.originName = originName;
    }

    public String getUploadDate() {
        return uploadDate;
    }

    public void setUploadDate(String uploadDate) {
        this.uploadDate = uploadDate;
    }

    public User getUploader() {
        return uploader;
    }

    public void setUploader(User uploader) {
        this.uploader = uploader;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Float getCoordinateLat() {
        return coordinateLat;
    }


    /**
     * Latitude is set there
     * <br>
     * Устанавливается значение широты
     * @param coordinateLat parameter use Fload values or can be null
     */
    public void setCoordinateLat(Float coordinateLat) {
        this.coordinateLat = coordinateLat;
    }

    public Float getCoordinateLong() {
        return coordinateLong;
    }


    /**
     * Longitude is set there
     * <br>
     * Устанавливается значение долготы
     * @param coordinateLong parameter use Fload values or can be null
     */
    public void setCoordinateLong(Float coordinateLong) {
        this.coordinateLong = coordinateLong;
    }

    public Double getDegree() {
        return degree;
    }

    /**
     * Shot degree is set there
     * <br>
     * Устанавливается угол съемки
     * @param degree parameter use Double values or can be null
     */
    public void setDegree(Double degree) {
        this.degree = degree;
    }


    /**
     * Coordinates and degeree are set up here from 2 poins on the map. The first point is the photo location, the second point is used to set up the direction of the shot. <br>
     * Устанавливаются координаты снимка и направление через координаты 2х точек на карте. Первая точка - собственно координаты снимка. Вторая точка нужна для определения направления от первой точки.
     * <br>
     * Координаты в градусах отсчитываются: широта - с юга на север (т.е. экватор - ноль градусов, Северный полюс - 90), долгота - от Гринчинского меридиана на восток (т.е. Казань восточнее Москвы, т.е. долгота у нее будет больше).
     * @param coordinate1Lat first point (photo location) Latitude parameter use Float values
     * @param coordinate1Long first point (photo location) Longitude parameter use Float values
     * @param coordinate2Lat second point (photo direction) Latitude parameter use Float values
     * @param coordinate2Long second point (photo direction) Longitude parameter use Float values
     */
    public void setCoordinatesAndDegree(Float coordinate1Lat, Float coordinate1Long, Float coordinate2Lat, Float coordinate2Long) {
        this.coordinateLat = coordinate1Lat;
        this.coordinateLong = coordinate1Long;
        //если у нас точка указатель на той же широте, что и основная (-->) или (<--)
        if (coordinate2Lat.equals(coordinate1Lat)) {
            if (coordinate2Long > coordinate1Long) { // (-->) - указатель восточнее основной
                this.degree = 90d;
            } else {
                if (coordinate2Long < coordinate1Long) {  // (<--) - указатель западнее основной
                    this.degree = -90d;
                } else { // указатель выставили в ту же точку, что и основную. направление не ясно, задаем 0 градусов
                     this.degree=0d;
                }

            }
        } else { //в данном случае ни одна из координат основной точки и указателя не совпадают - самый общий случай
            if (coordinate2Long.equals(coordinate1Long)) {  //совпадают долготы основной точки и указателя, значит направление на север или на юг
                if (coordinate2Lat > coordinate1Lat) { //координаты указателя больше основной точки, значит направление на север
                    this.degree = 0d;
                } else {  //координаты указателя меньше основной точки, значит направление на юг
                    this.degree = 180d;
                }
            } else { //тот самый общий случай - вычисляем через арктангенс от отношения разниц долгот к разнице широт
                this.degree = Math.toDegrees(Math.atan2(coordinate2Long - coordinate1Long,coordinate2Lat - coordinate1Lat));
            }
        }
    }
}
