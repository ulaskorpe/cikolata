-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 27 Eki 2021, 11:17:52
-- Sunucu sürümü: 5.7.23-0ubuntu0.18.04.1
-- PHP Sürümü: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `cikolata_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `sortname` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonecode` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 93, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(2, 'AL', 'Albania', 355, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(3, 'DZ', 'Algeria', 213, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(4, 'AS', 'American Samoa', 1684, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(5, 'AD', 'Andorra', 376, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(6, 'AO', 'Angola', 244, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(7, 'AI', 'Anguilla', 1264, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(8, 'AQ', 'Antarctica', 0, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(9, 'AG', 'Antigua And Barbuda', 1268, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(10, 'AR', 'Argentina', 54, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(11, 'AM', 'Armenia', 374, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(12, 'AW', 'Aruba', 297, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(13, 'AU', 'Australia', 61, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(14, 'AT', 'Austria', 43, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(15, 'AZ', 'Azerbaijan', 994, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(16, 'BS', 'Bahamas The', 1242, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(17, 'BH', 'Bahrain', 973, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(18, 'BD', 'Bangladesh', 880, NULL, '2019-07-11 14:40:21', '2019-07-11 14:40:21'),
(19, 'BB', 'Barbados', 1246, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(20, 'BY', 'Belarus', 375, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(21, 'BE', 'Belgium', 32, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(22, 'BZ', 'Belize', 501, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(23, 'BJ', 'Benin', 229, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(24, 'BM', 'Bermuda', 1441, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(25, 'BT', 'Bhutan', 975, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(26, 'BO', 'Bolivia', 591, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(27, 'BA', 'Bosnia and Herzegovina', 387, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(28, 'BW', 'Botswana', 267, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(29, 'BV', 'Bouvet Island', 0, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(30, 'BR', 'Brazil', 55, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(31, 'IO', 'British Indian Ocean Territory', 246, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(32, 'BN', 'Brunei', 673, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(33, 'BG', 'Bulgaria', 359, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(34, 'BF', 'Burkina Faso', 226, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(35, 'BI', 'Burundi', 257, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(36, 'KH', 'Cambodia', 855, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(37, 'CM', 'Cameroon', 237, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(38, 'CA', 'Canada', 1, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(39, 'CV', 'Cape Verde', 238, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(40, 'KY', 'Cayman Islands', 1345, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(41, 'CF', 'Central African Republic', 236, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(42, 'TD', 'Chad', 235, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(43, 'CL', 'Chile', 56, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(44, 'CN', 'China', 86, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(45, 'CX', 'Christmas Island', 61, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(46, 'CC', 'Cocos (Keeling) Islands', 672, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(47, 'CO', 'Colombia', 57, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(48, 'KM', 'Comoros', 269, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(49, 'CG', 'Republic Of The Congo', 242, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(50, 'CD', 'Democratic Republic Of The Congo', 242, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(51, 'CK', 'Cook Islands', 682, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(52, 'CR', 'Costa Rica', 506, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(54, 'HR', 'Croatia (Hrvatska)', 385, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(55, 'CU', 'Cuba', 53, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(56, 'CY', 'Cyprus', 357, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(57, 'CZ', 'Czech Republic', 420, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(58, 'DK', 'Denmark', 45, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(59, 'DJ', 'Djibouti', 253, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(60, 'DM', 'Dominica', 1767, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(61, 'DO', 'Dominican Republic', 1809, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(62, 'TP', 'East Timor', 670, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(63, 'EC', 'Ecuador', 593, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(64, 'EG', 'Egypt', 20, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(65, 'SV', 'El Salvador', 503, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(66, 'GQ', 'Equatorial Guinea', 240, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(67, 'ER', 'Eritrea', 291, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(68, 'EE', 'Estonia', 372, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(69, 'ET', 'Ethiopia', 251, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(70, 'XA', 'External Territories of Australia', 61, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(71, 'FK', 'Falkland Islands', 500, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(72, 'FO', 'Faroe Islands', 298, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(73, 'FJ', 'Fiji Islands', 679, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(74, 'FI', 'Finland', 358, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(75, 'FR', 'France', 33, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(76, 'GF', 'French Guiana', 594, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(77, 'PF', 'French Polynesia', 689, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(78, 'TF', 'French Southern Territories', 0, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(79, 'GA', 'Gabon', 241, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(80, 'GM', 'Gambia The', 220, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(81, 'GE', 'Georgia', 995, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(82, 'DE', 'Germany', 49, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(83, 'GH', 'Ghana', 233, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(84, 'GI', 'Gibraltar', 350, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(85, 'GR', 'Greece', 30, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(86, 'GL', 'Greenland', 299, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(87, 'GD', 'Grenada', 1473, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(88, 'GP', 'Guadeloupe', 590, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(89, 'GU', 'Guam', 1671, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(90, 'GT', 'Guatemala', 502, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(91, 'XU', 'Guernsey and Alderney', 44, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(92, 'GN', 'Guinea', 224, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(93, 'GW', 'Guinea-Bissau', 245, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(94, 'GY', 'Guyana', 592, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(95, 'HT', 'Haiti', 509, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(96, 'HM', 'Heard and McDonald Islands', 0, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(97, 'HN', 'Honduras', 504, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(98, 'HK', 'Hong Kong S.A.R.', 852, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(99, 'HU', 'Hungary', 36, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(100, 'IS', 'Iceland', 354, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(101, 'IN', 'India', 91, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(102, 'ID', 'Indonesia', 62, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(103, 'IR', 'Iran', 98, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(104, 'IQ', 'Iraq', 964, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(105, 'IE', 'Ireland', 353, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(106, 'IL', 'Israel', 972, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(107, 'IT', 'Italy', 39, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(108, 'JM', 'Jamaica', 1876, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(109, 'JP', 'Japan', 81, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(110, 'XJ', 'Jersey', 44, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(111, 'JO', 'Jordan', 962, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(112, 'KZ', 'Kazakhstan', 7, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(113, 'KE', 'Kenya', 254, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(114, 'KI', 'Kiribati', 686, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(115, 'KP', 'Korea North', 850, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(116, 'KR', 'Korea South', 82, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(117, 'KW', 'Kuwait', 965, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(118, 'KG', 'Kyrgyzstan', 996, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(119, 'LA', 'Laos', 856, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(120, 'LV', 'Latvia', 371, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(121, 'LB', 'Lebanon', 961, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(122, 'LS', 'Lesotho', 266, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(123, 'LR', 'Liberia', 231, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(124, 'LY', 'Libya', 218, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(125, 'LI', 'Liechtenstein', 423, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(126, 'LT', 'Lithuania', 370, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(127, 'LU', 'Luxembourg', 352, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(128, 'MO', 'Macau S.A.R.', 853, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(129, 'MK', 'Macedonia', 389, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(130, 'MG', 'Madagascar', 261, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(131, 'MW', 'Malawi', 265, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(132, 'MY', 'Malaysia', 60, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(133, 'MV', 'Maldives', 960, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(134, 'ML', 'Mali', 223, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(135, 'MT', 'Malta', 356, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(136, 'XM', 'Man (Isle of)', 44, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(137, 'MH', 'Marshall Islands', 692, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(138, 'MQ', 'Martinique', 596, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(139, 'MR', 'Mauritania', 222, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(140, 'MU', 'Mauritius', 230, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(141, 'YT', 'Mayotte', 269, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(142, 'MX', 'Mexico', 52, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(143, 'FM', 'Micronesia', 691, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(144, 'MD', 'Moldova', 373, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(145, 'MC', 'Monaco', 377, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(146, 'MN', 'Mongolia', 976, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(147, 'MS', 'Montserrat', 1664, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(148, 'MA', 'Morocco', 212, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(149, 'MZ', 'Mozambique', 258, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(150, 'MM', 'Myanmar', 95, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(151, 'NA', 'Namibia', 264, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(152, 'NR', 'Nauru', 674, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(153, 'NP', 'Nepal', 977, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(154, 'AN', 'Netherlands Antilles', 599, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(155, 'NL', 'Netherlands The', 31, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(156, 'NC', 'New Caledonia', 687, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(157, 'NZ', 'New Zealand', 64, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(158, 'NI', 'Nicaragua', 505, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(159, 'NE', 'Niger', 227, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(160, 'NG', 'Nigeria', 234, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(161, 'NU', 'Niue', 683, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(162, 'NF', 'Norfolk Island', 672, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(163, 'MP', 'Northern Mariana Islands', 1670, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(164, 'NO', 'Norway', 47, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(165, 'OM', 'Oman', 968, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(166, 'PK', 'Pakistan', 92, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(167, 'PW', 'Palau', 680, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(168, 'PS', 'Palestinian Territory Occupied', 970, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(169, 'PA', 'Panama', 507, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(170, 'PG', 'Papua new Guinea', 675, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(171, 'PY', 'Paraguay', 595, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(172, 'PE', 'Peru', 51, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(173, 'PH', 'Philippines', 63, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(174, 'PN', 'Pitcairn Island', 0, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(175, 'PL', 'Poland', 48, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(176, 'PT', 'Portugal', 351, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(177, 'PR', 'Puerto Rico', 1787, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(178, 'QA', 'Qatar', 974, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(179, 'RE', 'Reunion', 262, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(180, 'RO', 'Romania', 40, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(181, 'RU', 'Russia', 70, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(182, 'RW', 'Rwanda', 250, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(183, 'SH', 'Saint Helena', 290, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(184, 'KN', 'Saint Kitts And Nevis', 1869, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(185, 'LC', 'Saint Lucia', 1758, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(186, 'PM', 'Saint Pierre and Miquelon', 508, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(188, 'WS', 'Samoa', 684, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(189, 'SM', 'San Marino', 378, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(190, 'ST', 'Sao Tome and Principe', 239, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(191, 'SA', 'Saudi Arabia', 966, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(192, 'SN', 'Senegal', 221, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(193, 'RS', 'Serbia', 381, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(194, 'SC', 'Seychelles', 248, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(195, 'SL', 'Sierra Leone', 232, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(196, 'SG', 'Singapore', 65, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(197, 'SK', 'Slovakia', 421, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(198, 'SI', 'Slovenia', 386, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(199, 'XG', 'Smaller Territories of the UK', 44, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(200, 'SB', 'Solomon Islands', 677, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(201, 'SO', 'Somalia', 252, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(202, 'ZA', 'South Africa', 27, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(203, 'GS', 'South Georgia', 0, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(204, 'SS', 'South Sudan', 211, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(205, 'ES', 'Spain', 34, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(206, 'LK', 'Sri Lanka', 94, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(207, 'SD', 'Sudan', 249, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(208, 'SR', 'Suriname', 597, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(210, 'SZ', 'Swaziland', 268, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(211, 'SE', 'Sweden', 46, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(212, 'CH', 'Switzerland', 41, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(213, 'SY', 'Syria', 963, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(214, 'TW', 'Taiwan', 886, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(215, 'TJ', 'Tajikistan', 992, NULL, '2019-07-11 14:40:22', '2019-07-11 14:40:22'),
(216, 'TZ', 'Tanzania', 255, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(217, 'TH', 'Thailand', 66, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(218, 'TG', 'Togo', 228, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(219, 'TK', 'Tokelau', 690, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(220, 'TO', 'Tonga', 676, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(221, 'TT', 'Trinidad And Tobago', 1868, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(222, 'TN', 'Tunisia', 216, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(223, 'TR', 'Türkiye', 90, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(224, 'TM', 'Turkmenistan', 7370, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(225, 'TC', 'Turks And Caicos Islands', 1649, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(226, 'TV', 'Tuvalu', 688, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(227, 'UG', 'Uganda', 256, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(228, 'UA', 'Ukraine', 380, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(229, 'AE', 'United Arab Emirates', 971, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(230, 'GB', 'United Kingdom', 44, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(231, 'US', 'United States', 1, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(232, 'UM', 'United States Minor Outlying Islands', 1, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(233, 'UY', 'Uruguay', 598, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(234, 'UZ', 'Uzbekistan', 998, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(235, 'VU', 'Vanuatu', 678, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(236, 'VA', 'Vatican City State (Holy See)', 39, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(237, 'VE', 'Venezuela', 58, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(238, 'VN', 'Vietnam', 84, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(239, 'VG', 'Virgin Islands (British)', 1284, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(240, 'VI', 'Virgin Islands (US)', 1340, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(241, 'WF', 'Wallis And Futuna Islands', 681, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(242, 'EH', 'Western Sahara', 212, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(243, 'YE', 'Yemen', 967, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(244, 'YU', 'Yugoslavia', 38, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(245, 'ZM', 'Zambia', 260, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23'),
(246, 'ZW', 'Zimbabwe', 263, NULL, '2019-07-11 14:40:23', '2019-07-11 14:40:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(81, '2014_10_12_000000_create_users_table', 1),
(82, '2014_10_12_100000_create_password_resets_table', 1),
(83, '2019_08_19_000000_create_failed_jobs_table', 1),
(84, '2021_10_26_122118_create_user_devices_table', 1),
(85, '2021_10_26_143502_create_products_table', 1),
(86, '2021_10_26_144022_create_user_orders_table', 1),
(87, '2021_10_26_152044_create_user_verify_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `duration`, `price`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'silver', 'Donec vitae arcu pretium, condimentum risus eu, ornare nibh. Sed aliquam in nibh at semper.', 2, 30.00, 1, NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:14'),
(2, 'gold', 'Praesent at euismod dolor. Nam eget tempor dui. Curabitur scelerisque metus dui,.', 5, 50.00, 1, NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:14'),
(3, 'platinum', 'Sed aliquam in nibh at semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra', 12, 100.00, 1, NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tmp_table`
--

CREATE TABLE `tmp_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `tmp_table`
--

INSERT INTO `tmp_table` (`id`, `title`, `data`, `created_at`, `updated_at`) VALUES
(1, 'CRON WORKING FINE!20211027110722', '', '2021-10-27 11:07:22', '2021-10-27 11:07:22'),
(2, 'CRON WORKING FINE!', '20211027111036', '2021-10-27 11:10:36', '2021-10-27 11:10:36'),
(3, 'CRON WORKING FINE!20211027111108', 'katharina29@example.net exp:2023-02-27 10:17:54||ccartwright@example.com exp:2022-02-27 10:17:55||dewitt82@example.org exp:2022-09-27 10:17:53||dock.ernser@example.com exp:2022-10-27 10:17:58||ustrosin@example.com exp:2023-08-27 10:17:55||hailee26@example.org exp:2022-05-27 10:17:56||toy.grady@example.net exp:2022-10-27 10:17:53||bahringer.alison@example.org exp:2023-03-27 10:17:56||lherzog@example.org exp:2021-12-27 10:17:57||ibrahim.moore@example.org exp:2023-10-27 10:17:53||', '2021-10-27 11:11:08', '2021-10-27 11:11:08'),
(4, 'CRON WORKING FINE!20211027111250', 'rbeahan@example.com exp:2021-10-27 11:12:25||toy.grady@example.net exp:2021-10-27 11:12:25||gutmann.edward@example.org exp:2021-10-27 11:12:25||mokeefe@example.com exp:2021-10-27 11:12:25||henriette24@example.com exp:2021-10-27 11:12:25||erwin.kreiger@example.net exp:2021-10-27 11:12:25||cleuschke@example.net exp:2021-10-27 11:12:25||feest.rickie@example.net exp:2021-10-27 11:12:25||brennan.wisoky@example.net exp:2021-10-27 11:12:25||alfonso24@example.net exp:2021-10-27 11:12:25||', '2021-10-27 11:12:50', '2021-10-27 11:12:50');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `lang` enum('en','tr') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('standart','premium') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standart',
  `expires` datetime NOT NULL DEFAULT '2021-10-27 11:13:13',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `token`, `name`, `surname`, `email`, `email_verified_at`, `phone_code`, `phone`, `phone_verified_at`, `country_id`, `lang`, `is_active`, `type`, `expires`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sxguu4ePVXwa9CGy', 'Mrs. Destany Kuhic', NULL, 'scarlett.toy@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-07-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(2, '25GF45mv46eKtofy', 'Dr. Reese Hintz Sr.', NULL, 'nils.nikolaus@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2021-12-27 11:13:17', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:17'),
(3, '9aj2pP6qTPx7mKwE', 'Emely Stracke', NULL, 'mtorphy@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'standart', '2021-10-27 11:13:13', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:14'),
(4, 'fmQ7dzn9MEYUPBiW', 'Alize Reynolds', NULL, 'nikita.damore@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2025-10-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(5, '2c4jIEbCWxrAGSGm', 'Dr. Buster Kihn', NULL, 'gheller@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-12-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(6, 'q6hD4Jqf7yGlbTQx', 'Eileen Haley', NULL, 'lparisian@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-01-27 11:13:17', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(7, 'nEvxWxyxOwEYvOdP', 'Dr. Maribel Stehr MD', NULL, 'hilpert.trever@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2025-01-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(8, 'cOXEgWl1zyVbmV8l', 'Agustina Collier', NULL, 'ali99@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-08-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(9, 'MS2Rwzck0tovClGV', 'Twila Hodkiewicz', NULL, 'reba89@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-11-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(10, 'V91oqtnpR7z0NAtd', 'Emilie Larson', NULL, 'nina17@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-04-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(11, 'B8o8CorvcNNEcsPi', 'Lorena Witting', NULL, 'eldon.bruen@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-03-27 11:13:18', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(12, 'dpvwVAltoZ0XtIuG', 'Brice Hickle I', NULL, 'qdouglas@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-12-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:18'),
(13, 'PJDwConys4XYFiWb', 'Aliya Leannon', NULL, 'catalina45@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-05-27 11:13:17', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(14, 'kdA1gBhSEgzzTUxu', 'Dr. Carson Romaguera', NULL, 'khalil44@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-02-27 11:13:17', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(15, 'JGgdggGAjSMzkzM9', 'Mr. Taurean Stanton', NULL, 'doug.hartmann@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-05-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(16, 'wGOCRTMeVPukTQ0J', 'Antoinette Dach', NULL, 'xkerluke@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'standart', '2021-10-27 11:13:13', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:14'),
(17, '6Uy1yiWQeX0aMCoW', 'Ronny Lueilwitz', NULL, 'heath.langosh@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2021-12-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:16'),
(18, 'xpjjxz6NLiN3qT3c', 'Zoey Macejkovic', NULL, 'wilhelmine01@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-10-27 11:13:19', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(19, 'R7QLqhJj4uVr93ya', 'Tobin Hackett', NULL, 'jennings49@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-05-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(20, 'hnGpIN2jtRBmHF6a', 'Hal Raynor', NULL, 'odessa.mayer@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2021-12-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:16'),
(21, 'TK905eTcSTN8rYA2', 'Rick Bruen', NULL, 'forest36@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-10-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(22, 'a37P8OfCVU9ynhmN', 'Casimir Veum', NULL, 'mraz.frederik@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-05-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:17'),
(23, 'Us7JNzmlNQc6E8Hn', 'Connie O\'Keefe', NULL, 'khudson@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-10-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(24, 'NVqe3JQJuPu6sHEj', 'Craig Kertzmann III', NULL, 'tprosacco@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-10-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:18'),
(25, 'PqkFS87usCpxP3c3', 'Joany Schultz', NULL, 'verna13@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-08-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(26, 'GwfSdb3zIUNTA0Dp', 'Dr. Enola Walsh Jr.', NULL, 'kuhlman.marilie@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2021-12-27 11:13:19', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(27, '0enLBLeoXSXDcTqI', 'Tiara Ferry', NULL, 'luna.wuckert@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-01-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(28, 'ZzGblZ0zlYWQdo64', 'Miss Elsa Hagenes', NULL, 'jermaine94@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-08-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:18'),
(29, 'i9ZWXxUTOKQ9Z7c6', 'Dianna Kerluke', NULL, 'tmurray@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-08-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:18'),
(30, '1jyTz4Mu25UVgQdl', 'Nickolas Dickens', NULL, 'twehner@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-12-27 11:13:17', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:18'),
(31, 'zk5gguQKBB48KXz5', 'Florine Marquardt', NULL, 'brisa.lynch@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2025-07-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(32, 'jCDNNjhkcab6WdEn', 'Alden Conn', NULL, 'ebert.otho@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-05-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:16'),
(33, 'FzdXaL7qfXwT0Imz', 'Prof. Lawrence Kris', NULL, 'dickens.ophelia@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-09-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(34, 'gkBKHbGMXUQ8cbdC', 'Presley Ruecker', NULL, 'rgerlach@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-10-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(35, 'TN4BER4x3ukkmdRP', 'Napoleon Fritsch', NULL, 'trever.johnson@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-08-27 11:13:17', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(36, 'zVlDGpbMHLknLPik', 'Miss Ayla Mosciski III', NULL, 'mia20@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-12-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(37, 'r0HU6r4EyCfWkjV1', 'Anita Blick', NULL, 'denesik.lurline@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-02-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:18'),
(38, 'c6wgB5Jpd3aqD7C8', 'Brycen Stroman', NULL, 'annabell36@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-12-27 11:13:18', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:18'),
(39, 'WigyeNOrGQ2RN2Pj', 'Prof. Erick Von DVM', NULL, 'crowe@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-12-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:17'),
(40, 'tNb3a8As2SA5bGmB', 'Harry Bailey', NULL, 'garett39@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-07-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:18'),
(41, 'bQG8JoobIRS3f9gO', 'Cristina Cormier', NULL, 'quigley.bruce@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-07-27 11:13:17', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:18'),
(42, 'UkhkIAZ7kLX5GWE1', 'Destiney Dietrich Sr.', NULL, 'moore.jessika@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-07-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:17'),
(43, 'EKUNOjdnawByrGkQ', 'Colby Ortiz', NULL, 'auer.nyah@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2025-02-27 11:13:16', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:20'),
(44, 't6jIR5RcnFhPZUCY', 'Marlin Crist', NULL, 'mozell.fisher@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-03-27 11:13:15', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(45, 'BdAIwcnTFly2vIs7', 'Xavier Schinner V', NULL, 'reilly.kiarra@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-03-27 11:13:19', NULL, '2021-10-27 11:13:14', '2021-10-27 11:13:19'),
(46, 'TUZR7cCREbhmPLuB', 'Ressie Feil', NULL, 'xkoepp@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-05-27 11:13:17', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(47, 'JTQzHG4iqRauyeSz', 'Reagan Lueilwitz', NULL, 'hane.adriel@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-03-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(48, '710XE5zN82x3hwZB', 'Summer Koss', NULL, 'wwelch@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-05-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(49, 'alrRPFX8kA0GaODk', 'Aryanna Dooley', NULL, 'labadie.marcos@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-05-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(50, '3JmOAtWnvqFqog0K', 'Assunta Purdy', NULL, 'spurdy@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-10-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:16'),
(51, '1LkTEvhjumURiG6S', 'Dulce Daugherty', NULL, 'walter.jaquelin@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2027-08-27 11:13:17', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:20'),
(52, 'gvtFa6Nnmh1ZSfh8', 'Dr. Makenna Schmidt MD', NULL, 'kemmer.reymundo@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-01-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(53, 'LHm6r2Afj53xZ2kH', 'Dr. Lucy Emard Sr.', NULL, 'vryan@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-01-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(54, 'UY5voryTaes3xajZ', 'Prof. Merle Carter DDS', NULL, 'gregory.oconner@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2021-12-27 11:13:17', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:17'),
(55, 'NFYWL2fu6jUlsmYB', 'Jason Lockman', NULL, 'joy75@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-09-27 11:13:18', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:20'),
(56, 'ezzJK23jgw4DL82Q', 'Dr. Nathan Mills', NULL, 'haylee72@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-03-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(57, 'SZegtALkkvDVkOuP', 'Josue Kling DVM', NULL, 'omarquardt@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2025-02-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(58, 'UzjPowZh1rLpgC4h', 'Coy Lemke', NULL, 'luella.kub@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-02-27 11:13:18', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(59, 'uRSmQCeSkUmLSqC2', 'Sheila Fahey', NULL, 'vdibbert@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-12-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:17'),
(60, 'q0BhRICG48uF5sxw', 'Ervin Thiel', NULL, 'jordi09@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-09-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(61, 'lOIGTOmhr2ihfR1J', 'Barrett Willms', NULL, 'sabryna32@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-12-27 11:13:18', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(62, 'c89Xnx0HKnZ8OV0m', 'Elna Denesik', NULL, 'king.jarrell@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-08-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:20'),
(63, 'A7puHc6bO6HCcQSc', 'Mr. Nash Baumbach', NULL, 'cheyanne.zboncak@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-02-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(64, 'XlkIQxZuxZ6X9QvS', 'Stevie Lindgren V', NULL, 'nikolas.green@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-08-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(65, 'qa7Ou62KlBYuM3wH', 'Prof. Ashlee Goldner Sr.', NULL, 'lucious.rosenbaum@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-03-27 11:13:17', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(66, 'ojpLNYNVjlXqFh76', 'Mr. Sonny D\'Amore I', NULL, 'koch.thea@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-12-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:17'),
(67, 'lIYpyLe2RE2PE5GZ', 'Prof. Kennedi O\'Hara', NULL, 'goldner.brendan@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-07-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(68, 'Cgi9gbpxrNjEBDbw', 'Mrs. Twila Block', NULL, 'tina.welch@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-02-27 11:13:18', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(69, 'F2iBuOOiUfHgx8V3', 'Prof. Shanna Wilkinson', NULL, 'qbeer@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'standart', '2021-10-27 11:13:13', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(70, 'fiaMjCVXfNit3rr6', 'Kevon Murray', NULL, 'gonzalo.mante@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-08-27 11:13:18', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(71, '4J0Sw9MscgOzZxge', 'Tre Predovic MD', NULL, 'ernestina.conn@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-08-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(72, 'qHvnH1UmzVePVKk2', 'Harley Runte IV', NULL, 'royce.boehm@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-08-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(73, 'iVAUALWh8L54EnGW', 'Brant Dickens', NULL, 'wuckert.hunter@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-03-27 11:13:19', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(74, 'dhGqsBhxFl4Kx75W', 'Izaiah Rolfson', NULL, 'gkeebler@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-08-27 11:13:17', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:17'),
(75, '1Wwu0LD44EcpJn8O', 'Antonina Bogisich', NULL, 'vonrueden.mayra@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2025-07-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(76, 'zzMY4mNt4UK2ym0C', 'Clifford Satterfield Jr.', NULL, 'madyson.rohan@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2021-12-27 11:13:18', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(77, 'unrXaax21ej5Dmwh', 'Dr. Jaren Fay MD', NULL, 'santiago32@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2021-12-27 11:13:18', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(78, 'fRqYJIpDsWW9bobJ', 'Magnolia Vandervort Sr.', NULL, 'warren27@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-05-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:17'),
(79, 'OlfmMnrYVhxyehjm', 'Emmett Shields', NULL, 'moises.schroeder@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-10-27 11:13:18', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(80, 'ObtQXNfYMNMowS1Y', 'Montana Gaylord', NULL, 'price.dante@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-12-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:17'),
(81, 'XUkoIVqj3mcxCTWR', 'Mr. Broderick Waelchi', NULL, 'annamarie.senger@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-07-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(82, 'FnaVMHcMte8ixcCE', 'Dr. Amiya Ernser DDS', NULL, 'max25@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-10-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:17'),
(83, 'wsQXsZQXZ6OWUHWK', 'Zachery Renner', NULL, 'ycarter@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-05-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(84, '9XcATsIqZuwyVl7P', 'Stephany Conroy', NULL, 'norval13@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-02-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(85, 'TEAbtPj5zvEqpUYc', 'Milo Paucek PhD', NULL, 'zanderson@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-04-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(86, '5CxkZI3zh65Gq8zi', 'Eric Blanda V', NULL, 'pfeffer.dino@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-03-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:16'),
(87, 'hX8N6sRQerXEqBTy', 'Vincenza Hartmann II', NULL, 'florine.halvorson@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-03-27 11:13:18', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(88, '8QSsOatCUVVGdc9q', 'Cheyenne Altenwerth', NULL, 'juvenal.carter@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-12-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(89, 'UTkU6QzMpBbMpVa0', 'Una Cummerata', NULL, 'kkunze@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-08-27 11:13:17', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(90, '1LL53paAeyadOCYr', 'Prof. Mekhi Schultz', NULL, 'paige04@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-06-27 11:13:16', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(91, 'Pe6poexvpeFLYLeg', 'Cathy Borer', NULL, 'ymann@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-10-27 11:13:17', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:17'),
(92, '91sOjRfUWROuRIAZ', 'Marley Bernhard', NULL, 'cristina.mayer@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2025-03-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(93, 'ucwcfLOkL5B7Bzyt', 'Billie Upton', NULL, 'mclaughlin.bethel@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-03-27 11:13:18', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(94, 'AcKUluvQ8q8o2yrn', 'Kamille Jones II', NULL, 'ritchie.georgianna@example.net', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-08-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(95, 'KZ4TUIO4SBIyi8x4', 'Luciano Fay MD', NULL, 'mable.blanda@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2021-12-27 11:13:19', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(96, 'xA41W0NxQDoOuMXa', 'Rogelio Borer PhD', NULL, 'kunde.avis@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2025-05-27 11:13:17', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19'),
(97, 'QHIet9fAUc2S48x5', 'Courtney Murazik', NULL, 'darian01@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2023-10-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(98, 'paB3A911tQIvEc2z', 'Pat Lubowitz', NULL, 'breitenberg.elizabeth@example.org', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2022-03-27 11:13:18', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:18'),
(99, 'rADgnyHSC6MfF2Ay', 'Dasia Hoppe', NULL, 'dparisian@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2021-12-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(100, 's155NsPvO7FWilnT', 'Hazle Batz', NULL, 'molly41@example.com', '2021-10-27 11:13:14', NULL, NULL, NULL, 0, 'en', 1, 'premium', '2024-02-27 11:13:15', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_devices`
--

CREATE TABLE `user_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user_devices`
--

INSERT INTO `user_devices` (`id`, `user_id`, `device_id`, `app_id`, `os`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '9701873629', '6362913671', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(2, 2, '9270355990', '5088439163', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(3, 3, '2015565013', '9810316353', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(4, 4, '1395441263', '1520785159', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(5, 5, '8959027894', '3534236903', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(6, 6, '4056642853', '4755378214', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(7, 7, '3482854646', '3773377580', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(8, 8, '2273617862', '8270846927', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(9, 9, '7605801762', '8048274347', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(10, 10, '1189648734', '4303771613', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(11, 11, '9483538332', '9430327530', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(12, 12, '9820512173', '7423896174', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(13, 13, '3213564871', '7589163334', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(14, 14, '4381047160', '4577675960', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(15, 15, '5490750560', '2040253665', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(16, 16, '1539532247', '6005479630', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(17, 17, '1793936548', '9491727698', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(18, 18, '2407117874', '4942261678', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(19, 19, '3224586394', '9857560718', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(20, 20, '3320274872', '7915240944', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(21, 21, '5418223634', '3086042597', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(22, 22, '6838817757', '2884315582', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(23, 23, '9484770479', '1834399133', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(24, 24, '1539104879', '3367667106', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(25, 25, '5555446074', '7481189861', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(26, 26, '8717487587', '4348229287', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(27, 27, '7490655012', '7544085304', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(28, 28, '5550852938', '9427512322', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(29, 29, '1853710444', '5686974378', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(30, 30, '3759624195', '7309402769', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(31, 31, '7355250704', '6982191090', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(32, 32, '6664323145', '7867708372', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(33, 33, '8745409975', '1869142155', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(34, 34, '4060233353', '3355014841', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(35, 35, '7382110885', '2350204435', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(36, 36, '4906259144', '9075610133', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(37, 37, '9574371088', '6676831988', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(38, 38, '1660300814', '1659599516', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(39, 39, '9365172386', '3686234958', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(40, 40, '1999952570', '6992555191', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(41, 41, '3028582062', '8593856109', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(42, 42, '8525950972', '8872683769', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(43, 43, '9455153754', '2441789114', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(44, 44, '9421564785', '3753902335', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(45, 45, '2418188669', '8854047072', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(46, 46, '8915103849', '1172689362', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(47, 47, '1517638624', '1746015281', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(48, 48, '9317022591', '2926184012', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(49, 49, '5116168315', '5980056218', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(50, 50, '4252627455', '5634710486', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(51, 51, '1613657529', '1550415586', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(52, 52, '2218711745', '6474249654', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(53, 53, '5521627489', '5297221090', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(54, 54, '6015596198', '4786579165', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(55, 55, '9980520142', '9466931303', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(56, 56, '2995271472', '5482541266', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(57, 57, '9753559851', '6670838566', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(58, 58, '2679157988', '9651463159', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(59, 59, '2096539066', '1628608516', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(60, 60, '7468227018', '1944824606', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(61, 61, '3831261344', '6791083841', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(62, 62, '2350157585', '8174687884', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(63, 63, '2608887392', '9172260536', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(64, 64, '3806860170', '6645340718', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(65, 65, '7611810683', '3693319804', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(66, 66, '9087392809', '8984224339', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(67, 67, '8263315796', '3766718087', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(68, 68, '3865283280', '6880361635', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(69, 69, '4617309044', '7407519711', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(70, 70, '7050004324', '2390185558', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(71, 71, '2382886663', '6812392394', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(72, 72, '4981207470', '5590303184', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(73, 73, '6606150595', '7064628821', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(74, 74, '9630346299', '3737697269', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(75, 75, '9540828845', '3923388926', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(76, 76, '4656177207', '6315728006', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(77, 77, '2248810455', '4787964200', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(78, 78, '8102097304', '3592783273', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(79, 79, '4464318482', '5116465669', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(80, 80, '2338803758', '7861499378', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(81, 81, '7693704679', '5136548187', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(82, 82, '8115413335', '3677729450', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(83, 83, '3518927857', '5360224687', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(84, 84, '6045199308', '7321888346', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(85, 85, '4142295346', '7357775669', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(86, 86, '4397973012', '8177359894', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(87, 87, '8131810359', '3410478995', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(88, 88, '1677090799', '6673346814', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(89, 89, '4624867974', '1110804543', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(90, 90, '3005637039', '8773392031', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(91, 91, '5234027490', '1558565430', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(92, 92, '7391443594', '2409373885', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(93, 93, '3575071354', '4246133982', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(94, 94, '3188376881', '1731658914', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(95, 95, '1795737108', '8684611649', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(96, 96, '6898283581', '5248970917', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(97, 97, '7011628798', '1999747770', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(98, 98, '8804510384', '8940978998', 'IOS', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(99, 99, '3285190927', '6288803744', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(100, 100, '5256713994', '8206421299', 'AndroidSMT', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(101, 1, 'device-id##', '2222', 'ssaa', NULL, '2021-10-27 11:15:27', '2021-10-27 11:15:27');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_orders`
--

CREATE TABLE `user_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `status` enum('accepted','expired','cancelled','renewed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'accepted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user_orders`
--

INSERT INTO `user_orders` (`id`, `user_id`, `product_id`, `order_id`, `datetime`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 57, 3, 'EhdFaNcL', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(2, 72, 2, 'hZAmVOm4', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(3, 32, 2, 'tjzDKQXv', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(4, 100, 3, 'Vb1f6b1d', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(5, 25, 2, 'WpPFEbsz', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(6, 10, 3, 'SGiyHo8L', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(7, 34, 1, 'laWUzdyL', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(8, 4, 2, 'ltFNYyq1', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(9, 49, 1, 'u030hAck', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(10, 81, 1, 'D7CJU6f4', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(11, 100, 1, 'D12uKlT7', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(12, 97, 2, 'Xsrqp7jn', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(13, 94, 2, 'Zj2ep9md', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(14, 88, 1, 'F0R7h8Ef', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(15, 28, 2, 'BGtzbSDV', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(16, 99, 1, 'b4YzgxIg', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(17, 49, 2, 'hXSVLyiV', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(18, 92, 3, '0TwtLU1K', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(19, 63, 3, 'VqNJaL9c', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(20, 49, 2, 'UZedjFL3', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(21, 25, 2, 'TWunLuGf', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(22, 5, 1, 'tepcChxR', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(23, 71, 1, 'r0HwSwXl', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(24, 62, 2, 'fKLCajS8', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(25, 60, 1, 'DDdwF9Vt', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(26, 7, 2, '56EsLUSl', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(27, 39, 2, 'xY9xpMFP', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(28, 49, 2, 'U0jfB1kb', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(29, 37, 1, 'vqNr4BYs', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(30, 25, 3, 'fDJAmUMM', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(31, 21, 3, 'pNGgUQ8a', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(32, 31, 3, 'xO99qOUh', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(33, 67, 1, 'X0mnp27Y', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(34, 44, 3, 'WyGXlRaY', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(35, 75, 1, 'HqjnvkM8', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(36, 24, 3, '4DyVDtmG', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(37, 29, 2, 'E4hdHyI8', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(38, 36, 3, 'cYveQL03', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(39, 50, 3, 'DgOI9a1n', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(40, 8, 2, 'IMD4FTSV', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(41, 59, 3, 'BKVnD3Dv', '2021-10-27 11:13:15', 'accepted', NULL, '2021-10-27 11:13:15', '2021-10-27 11:13:15'),
(42, 90, 1, 'qvSgBznx', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(43, 47, 3, 'j5YnVjOz', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(44, 33, 1, 'fGNmvMns', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(45, 20, 1, 'bF9InzoN', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(46, 78, 1, 'Hb3gxEZp', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(47, 82, 3, 'sRYCHsfQ', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(48, 47, 3, 'BYpMtdz3', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(49, 48, 3, 'Wx6DkUJ2', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(50, 4, 3, 'LEkO6E5u', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(51, 43, 1, 'V8m6SQYm', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(52, 90, 1, 'ydPjwoKn', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(53, 34, 2, '8M2THDLX', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(54, 78, 2, 'orUmW3Ko', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(55, 15, 1, 'opWbvYex', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(56, 83, 1, 'cFaKc384', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(57, 22, 2, 'kC2G33je', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(58, 71, 2, 'aD1KkFdY', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(59, 86, 2, 's0ukJ6wi', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(60, 32, 1, 'QhfC09FH', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(61, 75, 2, 'Z9lirt5k', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(62, 53, 3, '6Bbdtm81', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(63, 48, 3, 'mcCCCDW0', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(64, 25, 1, 'HhvKHeFs', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(65, 7, 3, 'pKTvTgR6', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(66, 75, 3, 'GH0tYfrH', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(67, 1, 3, 'FRHI4vjT', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(68, 1, 3, '5JIbCVJa', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(69, 78, 2, 'IsthTn8M', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(70, 31, 1, 'y71tbHIg', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(71, 56, 3, '5VoIIVef', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(72, 43, 1, 'bx0oFqOU', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(73, 50, 3, 'ZKJgpGTw', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(74, 10, 1, '8BIvyuQR', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(75, 57, 3, 'lnyfiZ3i', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(76, 12, 3, 'dIWkW8Jm', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(77, 42, 1, 'YhnpJr0A', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(78, 75, 3, 'Ea8BWdgW', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(79, 49, 1, 'EYh0mmjk', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(80, 23, 2, 'oIcxWmzF', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(81, 57, 1, 'rlYeQDcL', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(82, 42, 2, 'nwCl1sTX', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(83, 53, 2, 'C25kTZRO', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(84, 43, 3, 'Y3CSXhAT', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(85, 19, 3, 'sCGntalG', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(86, 92, 3, 'G15UTvDs', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(87, 64, 2, 'txAtOh5U', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(88, 75, 3, 'Il6zCPmx', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(89, 84, 1, 'h2ZS1dmd', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(90, 10, 1, 'l23CgwuD', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(91, 23, 2, 'XPxoRlLp', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(92, 17, 1, 'yszBvZE1', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(93, 78, 3, '83FALkpX', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(94, 8, 1, 'chPOBjTY', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(95, 85, 1, 'Ml3OTmzn', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(96, 40, 3, 'aRO7ER6E', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(97, 43, 3, 'bB4ukG48', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(98, 59, 1, 'D6GjWw8c', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(99, 9, 1, 'b6e2eCJ0', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(100, 66, 1, 'g2N52ioX', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(101, 80, 1, 'JkyANTNs', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(102, 52, 2, 'jU3Z4cXI', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(103, 83, 3, 'JUAiASGp', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(104, 27, 2, 'm2QEkBUT', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(105, 39, 2, 'YfUcTxio', '2021-10-27 11:13:16', 'accepted', NULL, '2021-10-27 11:13:16', '2021-10-27 11:13:16'),
(106, 41, 3, 'rUyAyX6d', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(107, 54, 1, 'gucV20Sw', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(108, 30, 1, 'YhSIrUtS', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(109, 89, 2, 'DIY53h22', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(110, 24, 1, '3TpAIQ5z', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(111, 24, 2, 'v6iFzHqC', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(112, 97, 3, 'oNMAJNgF', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(113, 24, 3, 'GAQyJfzo', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(114, 9, 1, 'g8fqZezW', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(115, 62, 3, 'O8wzV1yB', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(116, 96, 3, '971IB0k5', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(117, 74, 2, 'Ent2I9Ao', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(118, 91, 3, 'Se70CGug', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(119, 8, 2, 'ryaBqQlK', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(120, 85, 3, 'XfNyrxga', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(121, 82, 3, 'XC9KfURu', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(122, 62, 2, '6Rr99WNV', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(123, 31, 3, 'fMOclbv7', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(124, 78, 1, 'jJeVBpSk', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(125, 14, 1, 'TdT8676a', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(126, 51, 3, 'D1xwKZdo', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(127, 42, 1, 'CurqrV7q', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(128, 74, 2, 'upH1Tjl8', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(129, 13, 1, 'q5Ntnl7f', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(130, 6, 2, 'XIHiIs5T', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(131, 27, 3, 'ZzvjjJa3', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(132, 80, 3, 'JeGwydJa', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(133, 39, 1, 'S3eBGROe', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(134, 48, 1, 'H9X1BRBw', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(135, 59, 3, 'i5ZUnYW3', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(136, 1, 1, 'g3nGYufy', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(137, 46, 1, '3zKDZtte', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(138, 83, 2, 'Zzz23DMm', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(139, 60, 1, 'DnCnKPef', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(140, 66, 3, 'tsyipkq9', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(141, 51, 2, 'NDe9s4Fp', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(142, 28, 3, 'jgBBvQ0V', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(143, 9, 1, 'gQYvcH8a', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(144, 22, 1, '4goMAMqg', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(145, 78, 2, 'u5kKv55c', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(146, 51, 2, 'QIZnuw9S', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(147, 2, 1, '5EhQRWEx', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(148, 90, 3, 'CW9Zg7Lg', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(149, 63, 1, 'y66EsDM9', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(150, 97, 1, 'WftVwuPk', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(151, 90, 1, 'iGKGhHVm', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(152, 35, 3, 'kxT5cDGD', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(153, 51, 1, 'tRhuwjC2', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(154, 31, 2, 'NdNoxOTS', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(155, 33, 1, 'uMfJofsk', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(156, 65, 3, '7RlhQPgF', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(157, 28, 2, 'DHQbuedD', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(158, 6, 2, 'ub3VfTxL', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(159, 52, 2, 'wRV4fQ2N', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(160, 39, 1, 'kWjmIvuF', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(161, 40, 1, 'lvvZKBO2', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(162, 84, 1, 'XK9gtRtF', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(163, 57, 3, 'efoNdIkO', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(164, 92, 2, 'B068Novh', '2021-10-27 11:13:17', 'accepted', NULL, '2021-10-27 11:13:17', '2021-10-27 11:13:17'),
(165, 8, 2, 'SQPTqw7n', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(166, 41, 2, 'vrQnTAuD', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(167, 60, 2, '2d97jJDc', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(168, 40, 1, 'srCrGRLF', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(169, 67, 1, 'OeiAWI8o', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(170, 28, 3, '2xkn76MP', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(171, 6, 3, 'IunemEQz', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(172, 29, 2, 'fgZ0AvAn', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(173, 31, 3, 'ASJBSswM', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(174, 1, 2, 'kdhXc9xP', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(175, 76, 1, 'H6lrjFKT', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(176, 30, 1, 'tG78EvPJ', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(177, 23, 3, 'UHHaPYOT', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(178, 75, 1, 'H3BJC5Ph', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(179, 51, 3, 'nok9Q7JN', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(180, 33, 1, 'UayAFDDH', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(181, 96, 3, 'OHNKt1s3', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(182, 53, 2, '2TZ5qR1R', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(183, 24, 2, 'Pph64mWz', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(184, 77, 1, 'ef3OhsG3', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(185, 61, 1, 'FQhRd5Pa', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(186, 71, 2, '6QGO1Lkp', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(187, 97, 2, 'FJxtA1Aj', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(188, 25, 2, 'qlzZqoQp', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(189, 51, 2, 'pGeT5qsT', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(190, 58, 1, 'cCtF4IbO', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(191, 93, 2, 'MnXZw6qA', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(192, 56, 2, 'Y3GnTpuB', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(193, 92, 3, 'E1MTq9iL', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(194, 19, 1, 'fx0SGHCA', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(195, 72, 3, 'ZaqwG8b4', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(196, 60, 1, '9rRAv6jw', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(197, 41, 1, '2OJXTvbm', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(198, 96, 1, 'tIrvHIwB', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(199, 63, 1, '4SWpRxXP', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(200, 41, 1, 'hOcltOpC', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(201, 38, 1, 'uNofRXSI', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(202, 87, 3, 'Z0PptgfH', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(203, 30, 2, 'Ijaq30Q2', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(204, 57, 1, '0F27bUXO', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(205, 30, 2, 'Fyk7YEB5', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(206, 70, 2, 'u0IDsaNq', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(207, 12, 1, 'QltRrYZT', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(208, 87, 2, '33oDP8Ig', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(209, 14, 3, 'bplUPS6L', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(210, 46, 2, 'WqGpldXu', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(211, 4, 3, 'FtLgwPul', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(212, 11, 2, 'CX9QgylS', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(213, 84, 3, 'AD5CnonZ', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(214, 52, 2, 'INrbC2DI', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(215, 98, 2, 'Jua2wbei', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(216, 13, 3, 'L4yyCKJr', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(217, 72, 2, 'DPdqU0pz', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(218, 37, 1, 'Jn2xcFZq', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(219, 70, 2, 'BqF2WiQb', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(220, 71, 2, '7YwiAGh8', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(221, 35, 2, 'rm7nr2ri', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(222, 40, 2, 'dCP97m8u', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(223, 68, 1, 'd2wKySje', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(224, 96, 2, 'XGK8FTg0', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(225, 4, 2, 'JOT4elL1', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(226, 55, 1, 'KLv0Yqfq', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(227, 85, 1, 'mLmG5zyh', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(228, 38, 3, 'ndoBTYtU', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(229, 27, 2, 'ztH9YuzH', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(230, 79, 3, '2uFStKAb', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(231, 67, 2, 'NIi5EIpa', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(232, 49, 3, '61nbd0Qm', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(233, 89, 2, 'pdenqVdi', '2021-10-27 11:13:18', 'accepted', NULL, '2021-10-27 11:13:18', '2021-10-27 11:13:18'),
(234, 47, 2, 'PhmDqak8', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(235, 55, 1, 'HpWb4W4C', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(236, 26, 1, 'MgM8GHWw', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(237, 94, 2, 'PL89mDWI', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(238, 68, 3, 'GHZPJRPh', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(239, 61, 3, 'NtfPLGSa', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(240, 83, 3, 'xqkVwzth', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(241, 13, 2, 'YkPE4dQK', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(242, 65, 2, '5cllFySC', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(243, 73, 2, 'PtXLQrZR', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(244, 7, 2, 'moLjjjl7', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(245, 9, 2, 'JJupMDjC', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(246, 48, 2, 'fLVZV1EB', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(247, 51, 3, 'XOXkbj4l', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(248, 34, 3, 'gvguM9Rr', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(249, 55, 2, 'RgXzRowy', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(250, 44, 2, 'omgiBAd6', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(251, 31, 1, 'KwQCrMcJ', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(252, 7, 2, 'yoejVnnY', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(253, 96, 3, 'Ex0Yv0il', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(254, 35, 2, 'wJNCCu16', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(255, 87, 3, 'EIuGdYg1', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(256, 8, 2, 'SwSzdzsQ', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(257, 23, 1, 'hekslkv0', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(258, 68, 1, 'rypenNN7', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(259, 53, 2, 'UpkGzROK', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(260, 85, 1, 'q1uTuZCM', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(261, 19, 2, 'mOW0jLXg', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(262, 14, 3, 'MEEg3AF8', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(263, 7, 3, '7svSUngk', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(264, 58, 1, 'B84SJcrh', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(265, 36, 1, 'wZPGTqwR', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(266, 34, 2, 'oWe5miJZ', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(267, 14, 1, 'HGhKMFdr', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(268, 88, 3, 'nINfzI2k', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(269, 25, 2, 'Sk8oDnhX', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(270, 21, 3, 'As9HIlrQ', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(271, 79, 3, 'au07mqkf', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(272, 100, 3, '57lSHJ0y', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(273, 71, 2, 'PRXELSYS', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(274, 18, 3, 'gCRfLlk2', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(275, 9, 1, 'pfyEi0hf', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(276, 1, 1, 'yT7ZfHqt', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(277, 5, 3, 'DqKU2U5T', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(278, 72, 3, '3oNpf4Hr', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(279, 81, 2, '0i1F4ySh', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(280, 64, 3, '2EKBiCoF', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(281, 10, 1, 'N5hCd2ZF', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(282, 45, 2, '6EE0nXix', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(283, 6, 2, 'Q3fCVkbU', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(284, 64, 2, '10mkJEcW', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(285, 100, 1, 'TuUdcQjF', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(286, 81, 1, 'TABPVw9t', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(287, 15, 2, 'W69v9Y1L', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(288, 90, 1, 'tpEi6dw7', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(289, 27, 2, 'AJTFG1WI', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(290, 61, 3, 'KKMAh5XN', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(291, 51, 2, '5JzpNqk0', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(292, 4, 1, 'zgk4eGDW', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(293, 11, 3, 'awSd3GQ1', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(294, 95, 1, '70Vz6gyi', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(295, 4, 3, 'HWzrqFhi', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(296, 33, 2, '0qHbkdce', '2021-10-27 11:13:19', 'accepted', NULL, '2021-10-27 11:13:19', '2021-10-27 11:13:19'),
(297, 55, 1, 'pCiIYLHE', '2021-10-27 11:13:20', 'accepted', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(298, 62, 3, 'bWOjF2Lg', '2021-10-27 11:13:20', 'accepted', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(299, 43, 3, 'EREZXzCA', '2021-10-27 11:13:20', 'accepted', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20'),
(300, 51, 3, '9HUSfDFL', '2021-10-27 11:13:20', 'accepted', NULL, '2021-10-27 11:13:20', '2021-10-27 11:13:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_verify`
--

CREATE TABLE `user_verify` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('phone','email') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'phone',
  `pin` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tmp_table`
--
ALTER TABLE `tmp_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_token_unique` (`token`);

--
-- Tablo için indeksler `user_devices`
--
ALTER TABLE `user_devices`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_orders_order_id_unique` (`order_id`);

--
-- Tablo için indeksler `user_verify`
--
ALTER TABLE `user_verify`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tmp_table`
--
ALTER TABLE `tmp_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Tablo için AUTO_INCREMENT değeri `user_devices`
--
ALTER TABLE `user_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Tablo için AUTO_INCREMENT değeri `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- Tablo için AUTO_INCREMENT değeri `user_verify`
--
ALTER TABLE `user_verify`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
