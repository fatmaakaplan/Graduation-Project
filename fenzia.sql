-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Haz 2025, 18:51:57
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `fenzia`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `id` int(11) NOT NULL,
  `toplamtutar` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`id`, `toplamtutar`) VALUES
(1, 10),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet_urunler`
--

CREATE TABLE `sepet_urunler` (
  `id` int(11) NOT NULL,
  `sepetid` int(11) NOT NULL,
  `urunid` int(11) NOT NULL,
  `tutar` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `sepet_urunler`
--

INSERT INTO `sepet_urunler` (`id`, `sepetid`, `urunid`, `tutar`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(11) NOT NULL,
  `isim` varchar(255) NOT NULL,
  `fiyat` decimal(10,2) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `isim`, `fiyat`, `resim`, `kategori`) VALUES
(1, 'Fenzia Libre', 7799.99, 'file/fenzia-libre.jpg', 'parfum'),
(2, 'Fenzia Tint', 999.99, 'file/fenzia-tint.jpg', 'makyaj'),
(3, 'Fenzia Creamy', 699.99, 'file/fenzia-creamy.jpg', 'kisiselbakim'),
(4, 'Fenzia Dream Beam Sunscreen', 2599.99, 'file/fenzia-dreambeam-sunscreen.jpg', 'ciltbakim'),
(5, 'Fenzia Milky Bright Sunscreen', 3559.00, 'file/fenzia-milkybright-suncreen.jpg', 'ciltbakim'),
(6, 'Fenzia Supergoop Sunscreen', 1099.99, 'file/fenzia-supergoop-sunscreen.jpg', 'ciltbakim'),
(7, 'Fenzia Brush', 599.99, 'file/fenzia-brush.jpg', 'makyaj'),
(8, 'Fenzia Instant Retouch Setting Powder', 1009.99, 'file/fenzia-instantretouchsetting-powder.jpg', 'makyaj'),
(9, 'Fenzia Custom-Wear Mascara', 2049.99, 'file/fenzia-custom-wear-mascara.jpg', 'makyaj'),
(10, 'Fenzia La Vie Est Belle', 4019.99, 'file/fenzia-lavieestbelle.jpg', 'parfum'),
(11, 'Fenzia Coconut Hair Sleeping Mask', 699.99, 'file/fenzia-coconuthairsleepingmask.jpg', 'sacbakim'),
(12, 'Fenzia Gloss Bomb Heat Universal Lip', 1449.99, 'file/fenzia-glossbombheatuniversallip.jpg', 'makyaj'),
(13, 'Fenzia Eau de Parfum', 4099.99, 'file/fenzia-eaudeparfum.jpg', 'parfum'),
(14, 'Fenzia Honey Infused Gloss Hair Mask', 2349.99, 'file/fenzia-honeyinfusedglooshairmask.jpg', 'sacbakim'),
(15, 'Fenzia Eau de Parfum - Bergamot, Ylang Ylang & Vanilya', 5299.99, 'file/fenzia-eaudeparfum-bergamotylangylangvanilya.jpg', 'parfum'),
(16, 'Fenzia Gloss Absolu High Gloss Lightweight Oil', 2399.99, 'file/fenzia-glossabsoluhighglosslightweightoil.jpg', 'sacbakim'),
(17, 'Fenzia Master Mascara', 1959.99, 'file/fenzia-mastermascara.jpg', 'makyaj'),
(18, 'Fenzia Skin Glow Foundation', 2649.99, 'file/fenzia-skinglowfoundation.jpg', 'makyaj'),
(19, 'Fenzia Watermelon Glow Niacinamide Dew Drops Jumbo', 1099.99, 'file/fenzia-watermelonglow.jpg', 'sacbakim'),
(20, 'Fenzia Hydrating Foundation Stick', 1199.99, 'file/fenzia-hydratingfoundationstick.jpg', 'makyaj'),
(21, 'Fenzia Luxury Eyeshadow Palette', 1499.99, 'file/fenzia-luxuryeyeshadowpalette.jpg', 'makyaj'),
(22, 'Fenzia Soft Pinch Luminous Powder Blush', 1619.99, 'file/fenzia-softpinchluminouspowderblush.jpg', 'makyaj'),
(23, 'Fenzia Mini Black Mascara', 1749.99, 'file/fenzia-miniblackmascara.jpg', 'makyaj'),
(24, 'Fenzia Hyaluronic Cream', 1419.99, 'file/fenzia-hyluroniccream.jpg', 'kisiselbakim'),
(25, 'Fenzia Creaseless Setting Powder', 1999.99, 'file/fenzia-creaselesssettingpowder.jpg', 'makyaj'),
(26, 'Fenzia All-In-One Cream Strawberry\r\n', 699.99, 'file/fenzia-allinonecreamstrawberry.jpg', 'makyaj');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sepet_urunler`
--
ALTER TABLE `sepet_urunler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sepetid` (`sepetid`),
  ADD KEY `fk_urunid` (`urunid`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `sepet_urunler`
--
ALTER TABLE `sepet_urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `sepet_urunler`
--
ALTER TABLE `sepet_urunler`
  ADD CONSTRAINT `fk_sepetid` FOREIGN KEY (`sepetid`) REFERENCES `sepet` (`id`),
  ADD CONSTRAINT `fk_urunid` FOREIGN KEY (`urunid`) REFERENCES `urunler` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
