-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2022 at 07:24 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thayaengineering`
--

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_categorie_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `title`, `description`, `download_files`, `download_categorie_id`, `created_at`, `updated_at`, `photo`) VALUES
(1, 'SLIDING WINDOW', 'Aluminium sliding windows are a popular choice for quick and effective ventilation.\r\n\r\nAluminium sliding windows are also useful in areas with limited space that cannot accommodate a window sash protruding inside or out – such as your laundry, kitchen or bathroom. Featuring our unique inline reveal as standard, our sliding windows offer improved thermal performance. These horizontal sliding glass windows are easy to maintain and operate, requiring minimal effort for maximum durability.', 'https://www.africau.edu/images/default/sample.pdf,https://www.africau.edu/images/default/sample.pdf,https://www.africau.edu/images/default/sample.pdf\r\n', 1, NULL, NULL, 'http://thayaengineering.com/admin/uploads/files/gkhxc2ysfq7el4_.png'),
(2, 'SLIDING WINDOW', 'Aluminium sliding windows are a popular choice for quick and effective ventilation.\r\n\r\nAluminium sliding windows are also useful in areas with limited space that cannot accommodate a window sash protruding inside or out – such as your laundry, kitchen or bathroom. Featuring our unique inline reveal as standard, our sliding windows offer improved thermal performance. These horizontal sliding glass windows are easy to maintain and operate, requiring minimal effort for maximum durability.', 'https://www.africau.edu/images/default/sample.pdf,https://www.africau.edu/images/default/sample.pdf,https://www.africau.edu/images/default/sample.pdf\r\n', 1, NULL, NULL, 'http://thayaengineering.com/admin/uploads/files/gkhxc2ysfq7el4_.png'),
(3, 'SLIDING WINDOW', 'Aluminium sliding windows are a popular choice for quick and effective ventilation.\r\n\r\nAluminium sliding windows are also useful in areas with limited space that cannot accommodate a window sash protruding inside or out – such as your laundry, kitchen or bathroom. Featuring our unique inline reveal as standard, our sliding windows offer improved thermal performance. These horizontal sliding glass windows are easy to maintain and operate, requiring minimal effort for maximum durability.', 'https://www.africau.edu/images/default/sample.pdf,https://www.africau.edu/images/default/sample.pdf,https://www.africau.edu/images/default/sample.pdf\r\n', 1, NULL, NULL, 'http://thayaengineering.com/admin/uploads/files/gkhxc2ysfq7el4_.png'),
(4, 'SLIDING WINDOW', 'Aluminium sliding windows are a popular choice for quick and effective ventilation.\r\n\r\nAluminium sliding windows are also useful in areas with limited space that cannot accommodate a window sash protruding inside or out – such as your laundry, kitchen or bathroom. Featuring our unique inline reveal as standard, our sliding windows offer improved thermal performance. These horizontal sliding glass windows are easy to maintain and operate, requiring minimal effort for maximum durability.', 'https://www.africau.edu/images/default/sample.pdf,https://www.africau.edu/images/default/sample.pdf,https://www.africau.edu/images/default/sample.pdf\r\n', 1, NULL, NULL, 'http://thayaengineering.com/admin/uploads/files/gkhxc2ysfq7el4_.png');

-- --------------------------------------------------------

--
-- Table structure for table `download_categories`
--

CREATE TABLE `download_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `download_categories`
--

INSERT INTO `download_categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Company Profile', NULL, NULL),
(2, 'Technical', NULL, NULL),
(3, 'Architecture', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `download_users`
--

CREATE TABLE `download_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_categorie_id` int(11) DEFAULT NULL,
  `apply_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `download_users`
--

INSERT INTO `download_users` (`id`, `name`, `phone`, `address`, `download_categorie_id`, `apply_date`, `created_at`, `updated_at`) VALUES
(1, 'Mg Mg', '09444161997', 'Yangon', 2, NULL, '2022-12-04 23:09:58', '2022-12-04 23:09:58'),
(2, 'Mg Mg', '09345543234', 'Yangon', 1, '2022-12-05 05:41', '2022-12-04 23:11:23', '2022-12-04 23:11:23'),
(3, 'Mg Mg', '09123456789', 'Yangon', 2, '2022-12-05 05:42:53 am', '2022-12-04 23:12:53', '2022-12-04 23:12:53'),
(4, 'adsf', 'adsf', 'asdf', 1, '2022-12-05 05:44:45 am', '2022-12-04 23:14:45', '2022-12-04 23:14:45'),
(5, 'asdf', 'asdf', 'asdf', 1, '2022-12-05 05:45:17 am', '2022-12-04 23:15:17', '2022-12-04 23:15:17'),
(6, 'asdf', 'asdf', 'asdf', 2, '2022-12-05 05:45:45 am', '2022-12-04 23:15:45', '2022-12-04 23:15:45'),
(7, 'asdf', 'asdf', 'asdf', 2, '2022-12-05 05:46:00 am', '2022-12-04 23:16:00', '2022-12-04 23:16:00'),
(8, 'asdf', 'asdf', 'asdf', 1, '2022-12-05 05:46:20 am', '2022-12-04 23:16:20', '2022-12-04 23:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `field`, `created_at`, `updated_at`) VALUES
(1, 'Business Owner', NULL, NULL),
(2, 'Engineer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_25_084920_create_project_categories_table', 2),
(6, '2022_11_26_090839_create_projects_table', 3),
(7, '2022_11_30_064048_create_service_categories_table', 4),
(8, '2022_11_30_065432_create_services_table', 5),
(9, '2022_12_01_083230_add_gallery_to_services_table', 6),
(10, '2022_12_01_084401_create_news_table', 7),
(11, '2022_12_01_100125_add_viewer_to_news_table', 8),
(12, '2022_12_01_101503_create_product_categories_table', 9),
(13, '2022_12_01_101546_create_products_table', 10),
(14, '2022_12_01_150312_create_download_categories_table', 11),
(15, '2022_12_01_150713_create_downloads_table', 12),
(16, '2022_12_05_043610_add_photo_to_downloads_table', 13),
(17, '2022_12_05_051910_create_fields_table', 14),
(18, '2022_12_05_052929_create_download_users_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `viewer` text COLLATE utf8mb4_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `photo`, `upload_date`, `created_at`, `updated_at`, `viewer`) VALUES
(1, 'အခုခေတ်ကြီးမှာ အဆောက်အဦတွေက ပိုပို Smart ကျပြီး ခေတ်မီနေကြပါပြီ။ သူများနဲ့မတူကြတဲ့ Design၊ အသုံးအဆောင်တွေနဲ့ ကိုယ့်ရဲ့ အဆောက်အဦ၊ နေအိမ်လုပ်ငန်းခွင်ကို အကောင်းဆုံးပြင်ဆင်နေကြပါပြီ။', 'အခုခေတ်ကြီးမှာ အဆောက်အဦတွေက ပိုပို Smart ကျပြီး ခေတ်မီနေကြပါပြီ။ သူများနဲ့မတူကြတဲ့ Design၊ အသုံးအဆောင်တွေနဲ့ ကိုယ့်ရဲ့ အဆောက်အဦ၊ နေအိမ်လုပ်ငန်းခွင်ကို အကောင်းဆုံးပြင်ဆင်နေကြပါပြီ။\r\nအခု လူကြီးမင်းတို့ရဲ့ နေအိမ် အဆောက်အဦကို အကောင်းဆုံးပြင်ဆင်ဖို့ လိုအပ်တဲ့အရာတွေထဲက 3 Panel Aluminum Sliding Door အကြောင်းလေးပြောပြပေးပါမယ်။\r\nSlide Door/ Window တွေထဲကမှ နောက်ဆုံးပေါ် 3 Panel Aluminum Sliding Door ကို THAYA Engineering Co, Ltd. မှာ ရရှိနိုင်ပါပြီ။ \r\n3 Panel Aluminum Sliding Door/Window ရဲ့ အားသာချက်တွေက\r\n(1) ပုံမှန် (၂)လမ်းသွား Slide Door တွေထက်ပိုပြီးကျယ်တဲ့ Space ပေးနိုင်တယ်\r\n(2) တံခါးရွက် မှန်ချပ်ကြီး (၃)ချပ်တပ်ရမှာဖြစ်ပြီး ကျန်တဲ့ တံခါးရွက် နှစ်ချပ်ကို တတိယမြောက်မှန်ချပ်ပေါ်မှာပဲ တစ်ထပ်တည်း ထားလို့ရလို့ တံခါးဖွင့်လို့ရတဲ့ Space ပိုများတယ်\r\n(3) လေဝင်လေထွက်ကောင်းစေတယ်\r\n(4) အပိတ်အဖွင့်လွယ်ကူတယ်\r\n(5) နေရောင်ကောင်းကောင်းရနိုင်တယ်\r\nဒါတွေက 3 Panel Aluminum Sliding Door/Window တွေရဲ့ အားသာချက်တွေပဲဖြစ်ပါတယ်။ \r\nTHAYA Engineering Co, Ltd. မှာရှိတဲ့ 3 Panel Aluminium Sliding Door and Window မှာ\r\n✔ လက်ကိုင်ကို Branded Accessories အနေနဲ့ CMECH handle (စကူပျောက်ဒီဇိုင်း) အသုံးပြုထားပါတယ်။ \r\nလက်ကိုင်က Firm ဖြစ်ပြီးတော့ ချော်ခြင်း၊ လည်ခြင်းမရှိဘဲ \r\nScrew တွေကိုမြုပ်ထားတဲ့ Design မို့ ပိုသပ်ရပ်တယ်။ Smart ပိုဖြစ်တယ်။\r\n✔ Handle ကလည်း L Key Type ဖြစ်လို့ တပ်ဆင်ထားတဲ့အခါ အဖွင့်အပိတ်ကို လွယ်ကူစေပါတယ်။\r\n✔45 Degree Join ဖြစ်တာမို့ ပိုပြီးခိုင်ခံ့တယ်၊ အမြင်လည်း ပိုပြီး သေသေသပ်သပ်ဖြစ်စေပါတယ်။ အံဝင်ခွင်ကျဖြစ်စေလို့ ကြည့်မိတဲ့သူရဲ့​အမြင်မှာလည်း ပိုပြီးတော့ ဆွဲဆောင်မှုရှိစေတယ်။\r\n✔ တံခါးရွက်(၃)ရွက်မှာ (၂)ရွက်စာနယ်ပယ် အပွင့်လိုချင်ရင်တော့ လျှောက်လမ်းသုံးခုပါတဲ့ Aluminum မျိုးကိုသုံးသင့်ပါတယ်။ \r\nလူကြီးမင်းတို့ရဲ့ ခေတ်မီပြီး ဆန်းသစ်တဲ့ အဆောက်အဦတွေအတွက် လိုအပ်တဲ့ ပစ္စည်းတွေ ဝန်ဆောင်မှုတွေကို THAYA Engineering Co. Ltd ရဲ့ ကျွမ်းကျင်တဲ့ ဝန်ထမ်းတွေက အကောင်းဆုံး ဝန်ဆောင်မှုပေးနေပြီပဲဖြစ်ပါတယ်။\r\nဆောက်လုပ်ရေး ကုမ္ပဏီများအတွက် ရေရှည် လက်တွဲဖို့ရာ သာယာ💯', 'http://thayaengineering.com/admin/uploads/files/gkhxc2ysfq7el4_.png', '1.1.2022', NULL, '2022-12-04 23:53:07', '10'),
(2, 'High- Rise Building တည်ဆောက်တော့မယ်ဆိုရင် ဘာတွေကို သိထားသင့်', 'High- Rise Building တည်ဆောက်တော့မယ်ဆိုရင် ဘာတွေကို သိထားသင့်တယ်ဆိုတာ ပြောထားခဲ့ပြီးပြီဆိုတော့ ဒီတစ်ပတ်မှာ High- Rise Building တည်ဆောက်ချင်သူတွေအတွက် အရေးအကြီးဆုံးဖြစ်တဲ့ Location (နေရာရွေးချယ်ခြင်း) ကိုပြောပြပေးသွားပါမယ်ခင်ဗျာ 📍\r\nလေတိုက်နှုန်း 💨\r\nကိုယ် အထပ်မြင့်အဆောက်အဦတည်ဆောက်ချင်တဲ့နေရာမှာ လွန်ခဲ့တဲ့နှစ်တွေမှာ လေတိုက်နှုန်း ပျဉ်းမျှအနေနဲ့ အမြင့်ဆုံး ဘယ်လောက်ရှိလဲဆိုတာ သိဖို့လိုအပ်ပါတယ်။ (အသေးစိတ်ကို ကိုယ်နေထိုင်တဲ့ တိုင်းနဲ့ပြည်နယ်ရဲ့ မိုးလေဝသနှင့် ဇလ‌ဗေဒဝန်ကြီးဌာနတွေမှာ ထုတ်ယူနိုင်ပါတယ်)\r\nငလျင် 🏜\r\nကိုယ်တည်ဆောက်တဲ့နေရာမှာ အရင်က ငလျင်လှုပ်ဖူးလား? ငလျင်ကြောနဲ့ရောနီးနေလား? ဘယ်လောက်အရှိန်နဲ့ လှုပ်ခဲ့ဖူးလဲစတဲ့ အချက်အလက်တွေကိုလည်း သိဖို့လိုအပ်ပါတယ်။ (ဒီအချက်အလက်တွေကိုလည်း မိုးလေဝသနဲ့ ဇလဗေဒဌာနမှာ စုံစမ်းနိုင်ပါတယ်)\r\nအသံဆူညံမှု 🏭\r\nကိုယ် အထပ်မြင့်အဆောက်အဦဆောက်မယ့်နေရာက Highway လမ်းမပေါ်မှာ တည်ဆောက်ချင်တာလား? စက်မှုဇုန်ဧရိယာမှာလား၊ လေဆိပ်အနီးမှာလား? ကားလမ်းပိတ်တတ်တဲ့ နေရာမျိုးလား ဆိုတာကို ထည့်သွင်းစဉ်းစားရပါမယ်။\r\nရာသီဥတု 🌦\r\nရာသီဥတုဆိုတာလည်း သိဖို့အရေးကြီးတဲ့အထဲမှာပါပါတယ်။ ကိုယ်တည်ဆောက်မယ့်နေရာက ဘယ်လိုရာသီဥတုမျိုးရှိတတ်လဲ? မိုးနည်းဒေသလား? မိုးများဒေသလား? အရမ်းအေးတဲ့ဒေသလား? ဆိုတာတွေကို ထည့်သွင်းစဉ်းစားသင့်ပါတယ်။\r\nHigh -Rise Building အထပ်မြင့်အဆောက်အဦကို ဆောက်ဖို့ ကြံရွယ်ထားတဲ့ မိတ်ဆွေတို့အတွက် သိသင့်သိထိုက်တဲ့ အချက်အလက်လေးတွေကို THAYA Engineering Co, Ltd. ကနေ ဗဟုသုတအနေနဲ့ဝေမျှပေးလိုက်ပါတယ်ဗျ \r\nနောက်အပါတ်တွေမှာလည်း High -Rise Building နဲ့ပတ်သတ်ပြီးသိသင့်တာတွေကိုထပ်မံတင်ပြပေးသွားပါဦးမယ်ဗျ ♻️\r\nအထပ်မြင့်အဆောက်အဦတွေဆောက်တဲ့အခါမှာ တိကျသေချာပြီး အကောင်းမွန်ဆုံး ဝန်ဆောင်မှုပေးနိုင်တဲ့ ကျွမ်းကျင်ပညာရှင်တွေနဲ့ သာယာ က ဆောင်ရွက်ပေးနေတယ်ဆိုတဲ့အကြောင်းလည်း သတင်းကောင်းပါးလိုက်ချင်ပါတယ် 📢', 'http://thayaengineering.com/admin/uploads/files/gkhxc2ysfq7el4_.png', '1.1.2022', NULL, '2022-12-04 23:22:45', '4');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_categorie_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_title`, `photo`, `description`, `product_categorie_id`, `created_at`, `updated_at`) VALUES
(1, 'ANODIZED ALUMINIUM', 'http://thayaengineering.com/admin/uploads/files/gkhxc2ysfq7el4_.png', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Anodized Aluminium Profile is the traditional aluminium surface treatment method</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> High Strength aluminium solid thick oxide film with good quality closed & touch-resistant, wear-resistant, and resistant to ultraviolet light performance, suitable for a variety of Fenestration and Industrial Profiles</p>', '1', NULL, NULL),
(2, ' POWDER COATING ALUMINIUM', 'http://thayaengineering.com/admin/uploads/files/g5a7sw2colpyrb8.png', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Thick Film coverage, excellent weather resistance and long service life</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Generally used for indoor and outdoor, it with an excellent resistance to UV and anti-air aging together with more than 200 colors arbitrarily to selected.</p>', '1', NULL, NULL),
(3, ' ELECTROPHORESIS ALUMINIUM', 'http://thayaengineering.com/admin/uploads/files/hbotfkz43el7s_w.png', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Electrophoretic coating is a technology that use of electric precipitation method in the aluminium anodic oxide film covering the layer of organic paint, after baking curing that surface profile having dual protection.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Film compacting continuous, anti-acid erosion, superior weather resistance, long service life 3. Electrophoresis aluminium is a best aluminium surface treatment method of anti-building mortars corrosion</p>', '1', NULL, NULL),
(4, ' WOODEN TEXTURE ALUMINIUM', 'http://thayaengineering.com/admin/uploads/files/1b2qf6vu48jcrgt.png', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Characteristics: high anti-weathering, anti-corrosion, and maintenance free</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Natural luxurious appearance, elegant high-grade decorative</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> The surface is not easy to fade, and is one of the world best wood product substitute</p>', '1', NULL, NULL),
(5, ' THERMAL-BREAK ALUMINIUM', 'http://thayaengineering.com/admin/uploads/files/xa4kph318567g92.jpg', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Excellent energy saving effect, K value 2.0 to 3.5W/M.K, saving about 30-40%</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Broken thermal with hollow glass combined, which temperature difference up to 15-200C</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Excellent sound insulation performance, reduce noise contribution 30-50DB</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Anti-condensation frost efficacy, windows are clean and bright</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\"><span class=\"fa fa-play\" style=\"margin: 0px; padding: 0px; border: 0px; list-style: none;\"></span> Windload ≥ 5 grade; airtightness ≥ 4 grade, effectively prevent moisture condensation</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; list-style: none; letter-spacing: 0.7px;\">With an advantages of direct import from main production line, we are able to supply various type of color, coating and profile thickness as per customer requirement.</p>', '1', NULL, NULL),
(6, 'Brushed Aluminium Profile', 'http://thayaengineering.com/admin/uploads/files/o1453c2ptk7ds89.png', '<font face=\"Calibri Light, sans-serif\"><span style=\"font-size: 13.3333px; font-family: &quot;Times New Roman&quot;;\">Brushed aluminium profiles have an attractive satin finish. Brushing is a pre-treatment process that is applied to the surface of the extruded aluminium profiles before anodizing. It gives the metal surface a unique look and helps to retain the lustre and give a pattern of fine lines.&nbsp;</span></font>', '1', NULL, NULL),
(7, 'Fluorocarbon Aluminium Profile', 'http://thayaengineering.com/admin/uploads/files/1baf2drvlgp57s6.png', '<p>It is the world’s most high-end architectural aluminium for curtain wall and windows.</p><p>With the most durable building surface adhesion called fluorocarbon paint film, which have more than 70% KYNA500(R) of polyvinylidene fluoride resin (PVDF).</p><p>Having excellent durability with appearance of persistent and long-term performance.</p>', '1', NULL, NULL),
(8, 'Normal Float Glass', 'http://thayaengineering.com/admin/uploads/files/xzuvh1brf8y_9wk.jpg', '<div><font face=\"Calibri Light, sans-serif\"><span style=\"font-size: 13.3333px;\">Normal glass is synonymous with flat glass irrespective of the process of manufacture. Float glass has a perfectly flat, brilliant surface, whereas sheet glass has slight distortions. Both are referred as normal (annealed) glass and can be processed to obtain many different varieties of glass for use in buildings.</span></font></div><div><font face=\"Calibri Light, sans-serif\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div><font face=\"Calibri Light, sans-serif\"><span style=\"font-size: 13.3333px;\">The properties of normal glass are:</span></font></div><div><font face=\"Calibri Light, sans-serif\"><span style=\"font-size: 13.3333px;\">• High light transmission</span></font></div><div><font face=\"Calibri Light, sans-serif\"><span style=\"font-size: 13.3333px;\">• Optical clarity</span></font></div><div><font face=\"Calibri Light, sans-serif\"><span style=\"font-size: 13.3333px;\">• Can be processed to produce other glass types such as tempered, laminated and insulating.</span></font></div><div><font face=\"Calibri Light, sans-serif\"><span style=\"font-size: 13.3333px;\">• Colour: Clear, Grey, Bronze, Green, Blue and Pink.</span></font></div><div><font face=\"Calibri Light, sans-serif\"><span style=\"font-size: 13.3333px;\">• U value: 5.7 W/sq m K for 12mm thick to 6.4 W/sq. m. K for 19mm thick.</span></font></div>', '2', NULL, NULL),
(9, 'Tinted Glass', 'http://thayaengineering.com/admin/uploads/files/_qyj3ol5mpezbkt.jpeg', '<p>It is normal glass that is coloured by the addition of metal oxides into molten glass. Tinted glass possesses filtering properties that help reduce eyestrain due to dazzle. Its absorption properties help diminish energy transmissions when exposed to sunlight. Tints like green allows more visible light and cut out infrared radiation.</p><p>Applications: Used in doors, windows and partitions etc.</p>', '2', NULL, NULL),
(10, 'Pattern Glass', 'http://thayaengineering.com/admin/uploads/files/jokxwz674r03ptu.jpg', '<div><font face=\"Calibri Light, sans-serif\"><span style=\"font-size: 13.3333px;\">It is a decorative and translucent glass with figures or patterns on one face. In addition to diffusing light and obstructing visibility from the outside, the figures soften the interior lighting. This type of glass is usually more fragile and less convenient to clean.</span></font></div><div><font face=\"Calibri Light, sans-serif\"><span style=\"font-size: 13.3333px;\">Applications: Interiors of the buildings, opaque glazing like bathrooms etc</span></font></div>', '2', NULL, NULL),
(11, 'Reflective Glass', 'http://thayaengineering.com/admin/uploads/files/mv91dzr87y46c50.jpg', '<p>A metallic coating is applied to one side of the glass in order to significantly increase the amount of reflection by the glass of both the visible and infra-red (light and heat) range of the electromagnetic spectrum. This metallic coating can be applied to clear or body tinted glass. The reflective glass imparts a mirror like appearance to the exterior of buildings under most daytime conditions. It reduces heat gain and glare from the exterior and allows optimum visible light transmission to the interior.</p><p>Applications: Reflective glass is used in office buildings, high-rise buildings,</p><p>• Entrance</p><p>• Privacy windows</p><p>• Decorative walls</p><p>• Spandrel glazing</p><p>• Vertical and sloped glazing</p><p>• Solar control applications</p><p>• Building facades</p>', '2', NULL, NULL),
(12, 'Wired Glass', 'http://thayaengineering.com/admin/uploads/files/0d4u7j9oeia1hmq.jpg', '<p>It has wire mesh incorporated during its production. Wired glass is recommended for its fire protection property. In case of fire, the glass cracks but broken pieces tend to remain in position restricting the spread of flame and smoke for some time.</p><p>Applications: Used where nominal fire protection is required in windows, doors &amp; partitions etc.</p>', '2', NULL, NULL),
(13, 'Tempered or Toughened Glass ', 'http://thayaengineering.com/admin/uploads/files/diavlw4q5ez_g3n.jpg', '<p>Tempered glass is an extremely strong glass which is heat treated to a uniform temperature of approximately 650ºC and rapidly cooled to induce compressive stresses of 770 kg/m2 to 1462 kg/m2 on the surfaces and edge compression of the order of 680 kg/m2. Tempered glass is not manufactured on float line. It is a separate process.</p><p>Tempered or toughened glass gains its added strength from the compressed surfaces. However, if a deep scratch or an impact penetrates the surface, the glass will break into a number of small particles. The heat treatment process for tempered glass requires that all fabrication be completed prior to toughening. Any attempt to cut, drill, grind or sand blast the glass after toughening may result in glass breakage. The heat treatment process does not change the light</p><p>transmission and solar radiant heat properties of the glass.</p><p><b>Applications</b></p><p><span style=\"font-size: 0.875rem;\">It is used in commercial applications where wind, snow or thermal loads exceed the strength capabilities of normal (annealed) glass such as safety glazing for entranceway, railings, partitions or fire knock-out windows. Tempered glass can be used in balustrades, escalator side panels, handrails, shower screens, bathtub enclosures, sliding/swing doors, squash, racquetball wall, showcases, partitions etc.&nbsp;</span></p>', '2', NULL, NULL),
(14, 'Laminated Glass', 'http://thayaengineering.com/admin/uploads/files/9bupfhywvkm8qa2.jpg', '<p>Laminated glass is composed of two or more layers of glass with one or more layers of a transparent/ pigmented and specially treated plastic Polyvinyl Butyral [PVB] sandwiched between the glass layers. The glass panes (layers) can be either normal glass or tempered glass. When the glass is broken, fragments tend to adhere to the plastic [PVB] interlayer thereby reducing the risk of injury and helping to resist further damage by weather.</p><p>Applications</p><p>Laminated glass is used in High security places, for example, banks, teller, and drive-through windows, ticket windows, gas stations, currency exchanges, armoured vehicles, jewellery shops.</p><p>Other areas where laminated glass is used are:</p><p>• Curtain wall glazing</p><p>• Sloped glazing</p><p>• Skylights</p><p>• Glass roofs &amp; floors</p><p>• Aquariums</p><p>• Animal observatory windows</p><p>• Safety glazing for partitions</p><p>• Security glazing for banks against bullets/ hand propelled objects.</p>', '2', NULL, NULL),
(15, 'Low Emissivity Glass', 'http://thayaengineering.com/admin/uploads/files/is4rodztwp279nu.jpg', '<p>Low-E, or low-emissivity, glass was created to minimize the amount of infrared and ultraviolet light that comes through your glass, without minimizing the amount of light that enters your home. Low-E glass windows have a microscopically thin coating that is transparent and reflects heat. The coating is even thinner than human hair! The Low-E coatings keep the temperature in your home consistent by reflecting the interior temperatures back inside.</p><p>Types of Low-E Coatings</p><p>Passive Low-E Coatings (Hard-Coat): The passive Low-E coatings are manufactured using the pyrolytic process, which creates a pyrolytic coating. The coating is then applied to the glass ribbon while it is being produced on the float line, which causes the coating to “fuse” to the hot glass surface. This fusion creates a strong bond, or “hard-coat,” that is very durable.</p><p>Solar Control Low-E Coatings (Soft-Coat): Solar control Low-E coatings are manufactured using the Magnetron Sputtering Vapor Deposition (MSVD) process, which means the coating is applied off-line to pre-cut glass in a vacuum chamber at room temperature. This coating, which is also referred to as “soft-coat,” needs to be sealed in an insulated glass (IG) or laminated unit. The soft-coat has lower emissivity and superior solar control performance. This coating offers the highest performing solar control.</p>', '2', NULL, NULL),
(16, 'Heat Strengthened Glass', 'http://thayaengineering.com/admin/uploads/files/48e1jrukzhlmdtn.jpg', '<p>Heat strengthened glass is a type of tempered glass which has been strengthened thermally by inducing a surface compression of 422 to 658 kg/cm2 as compared to a range of 770 to 1462 kg/cm2 in case of fully tempered glass.</p><p>Heat strengthened glass is not manufactured on float line. It is a separate process. It is valued for its mechanical strength, which is twice that of normal annealed glass though half of fully tempered glass. With the exception of strength and breakage characteristics, heat - strengthened glass retains the normal properties of annealed glass. Heat-strengthened glass provides necessary resistance to thermal stress associated with high performance glazing materials such as tinted glass and reflective glass. It also provides necessary resistance to heat building up when used as spandrel glass. Heat strengthened glass with its flatter surface also results in the facade having less optical distortions.</p><p>Applications</p><p>Heat Strengthened glass is suitable for spandrel and vision panels of curtain walls and structural glazing as they safeguard against thermal breakages. It is used for making laminated glass panels for safety combined with strength. It is used in complex glass combinations like double-glazing as one lite of laminated glass for glass floors and roofs.</p>', '2', NULL, NULL),
(17, 'Insulating Glass', 'http://thayaengineering.com/admin/uploads/files/ig5l9ruscw74ojy.jpg', '<p>The insulating glass is a prefabricated unit made of two or more glass panes, separated by a cavity and edges-hermetically sealed together. This edge seal not only binds the individual sheets of glass together to maintain the mechanical strength of the joint but also protects the cavity between the glasses from outside influences. The moisture in the cavity between the two glasses is controlled by desiccants filled in the perforated spacer. The spacer can be aluminum, composite plastics etc. The spacer ensures the precise distance between the glass panes. The cavity normally filled with dry air but can be also filled with gases such as Argon, Krpton for better thermal performance or hydrogen fluro oxide for better acoustic performance. The low heat conductivity of the enclosed dry gas between the glass panes drastically reduces the thermal heat transmission through the glass 2.8 W/sqmK as compared to 5.73 W/sqm K for normal glass. It also helps is reducing the direct solar energy specifically when the outer pane is a solar control glass.</p><p>Applications</p><p>• Office buildings, hospitals, hotels, houses and buildings with exceptionally</p><p>high heating or cooling requirements.</p><p>• Buildings that need the temperature and humidity strictly controlled such as</p><p>telephone exchanges, laboratories, etc.</p>', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Aluminium', NULL, NULL),
(2, 'Glass', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_categorie_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `photo`, `project_categorie_id`, `created_at`, `updated_at`) VALUES
(1, '2016 Project', 'https://thayaengineering.com/admin/uploads/files/p9voiw_stgr6k2a.jpg,https://thayaengineering.com/admin/uploads/files/hae85d6jwcpr_f1.jpg,https://thayaengineering.com/admin/uploads/files/gn01u54kzi6tjm8.jpg,https://thayaengineering.com/admin/uploads/files/ei8ryunmsz63l9a.jpg', 1, NULL, NULL),
(2, '2015 Project', 'https://recruitmentmyanmarsak.com/admin/uploads/files/qt76bxne_l1mkw4.jpg,https://recruitmentmyanmarsak.com/admin/uploads/files/fjoadrpz465hcmk.jpg,https://recruitmentmyanmarsak.com/admin/uploads/files/jfhrcued8oxpm23.jpg', 1, NULL, NULL),
(3, '2016 Project', 'https://thayaengineering.com/admin/uploads/files/p9voiw_stgr6k2a.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/hae85d6jwcpr_f1.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/gn01u54kzi6tjm8.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/ei8ryunmsz63l9a.jpg', 1, NULL, NULL),
(4, '2015 Project', 'https://thayaengineering.com/admin/uploads/files/p9voiw_stgr6k2a.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/hae85d6jwcpr_f1.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/gn01u54kzi6tjm8.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/ei8ryunmsz63l9a.jpg', 1, NULL, NULL),
(5, '2016 Project', 'https://thayaengineering.com/admin/uploads/files/p9voiw_stgr6k2a.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/hae85d6jwcpr_f1.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/gn01u54kzi6tjm8.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/ei8ryunmsz63l9a.jpg', 1, NULL, NULL),
(6, '2015 Project', 'https://thayaengineering.com/admin/uploads/files/p9voiw_stgr6k2a.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/hae85d6jwcpr_f1.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/gn01u54kzi6tjm8.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/ei8ryunmsz63l9a.jpg', 1, NULL, NULL),
(7, '2016 Project', 'https://thayaengineering.com/admin/uploads/files/p9voiw_stgr6k2a.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/hae85d6jwcpr_f1.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/gn01u54kzi6tjm8.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/ei8ryunmsz63l9a.jpg', 1, NULL, NULL),
(8, '2015 Project', 'https://thayaengineering.com/admin/uploads/files/p9voiw_stgr6k2a.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/hae85d6jwcpr_f1.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/gn01u54kzi6tjm8.jpg,\r\nhttps://thayaengineering.com/admin/uploads/files/ei8ryunmsz63l9a.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`id`, `title`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'High-Rise Building', 'http://localhost/img/company/Our%20Project/High%20Rise%20Building.JPG', NULL, NULL),
(2, 'EDUCATION', 'http://localhost/img/company/Our%20Project/Education.JPG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_categorie_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `photo`, `service_categorie_id`, `created_at`, `updated_at`, `gallery`) VALUES
(1, 'Sliding Window', '<p>Aluminium sliding windows are a popular choice for quick and effective ventilation.</p><p>Aluminium sliding windows are also useful in areas with limited space that cannot accommodate a window sash protruding inside or out – such as your laundry, kitchen or bathroom. Featuring our unique inline reveal as standard, our sliding windows offer improved thermal performance. These horizontal sliding glass windows are easy to maintain and operate, requiring minimal effort for maximum durability.<br></p>', 'https://thayaengineering.com/admin/uploads/files/pgz1qkebt7ch6x8.jpg', '1', NULL, NULL, 'https://thayaengineering.com/admin/uploads/files/p9voiw_stgr6k2a.jpg,https://thayaengineering.com/admin/uploads/files/hae85d6jwcpr_f1.jpg,https://thayaengineering.com/admin/uploads/files/gn01u54kzi6tjm8.jpg,https://thayaengineering.com/admin/uploads/files/ei8ryunmsz63l9a.jpg'),
(2, 'Casement Window', '<p>Gives your home a contemporary feel</p><p>Aluminium casement windows are the perfect choice for a contemporary feel. The exquisite slim aluminium frames allow for a wider glass area to let the light flood in. Our aluminium casement windows are also available in a range of stylish colours to complement your home.</p>', 'https://thayaengineering.com/admin/uploads/files/aefuhr_yj37t1ig.jpg', '1', NULL, NULL, 'https://thayaengineering.com/admin/uploads/files/p9voiw_stgr6k2a.jpg,https://thayaengineering.com/admin/uploads/files/hae85d6jwcpr_f1.jpg,https://thayaengineering.com/admin/uploads/files/gn01u54kzi6tjm8.jpg,https://thayaengineering.com/admin/uploads/files/ei8ryunmsz63l9a.jpg'),
(3, 'Top Hung Window (Awning Window)', '<p>Top Hung (awning window) is the perfect choice to express a modern contemporary style</p><p>Awning windows are hinged on top and open outward, enabling ventilation without letting in rain or falling leaves. Screens are on the inside of the window, where they\'re more protected from the elements. They are a great choice to pair with non-operable windows, such as above or below of fixed glass panel.<br></p>', 'https://thayaengineering.com/admin/uploads/files/9kfnprzt7im0ylq.jpg', '1', NULL, NULL, NULL),
(4, 'Sliding Door', '<p>The Perfect transition from the inside to the outside of your property</p><p>Aluminium sliding doors are a great option for opening up your home to the outdoors without losing valuable space on the inside or out. If you set up sliding doors between indoor and outdoor areas, you can use large glass surfaces. With this solution, you let plenty of beneficial daylight into the year-round, while also letting the surroundings outside become part of the room.</p>', 'https://thayaengineering.com/admin/uploads/files/av3u0lqep1mjfny.jpg', '2', NULL, NULL, NULL),
(5, 'Swing Door', '<p>Swing doors in many forms guide us comfortably through daily life.</p><p>Swing doors take up minimal space while providing maximal opening width. The swing door, available in single and double versions, can be opened in both directions. These doors are fixed on pivot hinges which open the leaves to 90° on either side of the opening. The leaves have rounded joints enabling total opening to 180°.</p><p>Swing doors can be locked if they are fitted with a deadlock at the top and/or bottom of the leaf.</p>', 'https://thayaengineering.com/admin/uploads/files/46subpyjr5og_nx.jpg', '2', NULL, NULL, NULL),
(6, 'Folding Door', '<p>Folding door will give your home individuality and character</p><p>Folding doors are a great solution when space constraints make an inswing or outswing door impractical. Create a functional, open space for living, working and entertaining. Add the WOW factor to your home and seamlessly merge your patio and garden with your new living space to create a visually stunning addition to your home.</p>', 'https://thayaengineering.com/admin/uploads/files/q6f5hxzyjk8l310.jpg', '2', NULL, NULL, NULL),
(7, 'Aluminium Curtain wall', '<div><font face=\"Montserrat, Arial, Helvetica, sans-serif\"><span style=\"font-size: 15px;\"><i>With the increase in the number of high-rise buildings, curtain wall systems came into the picture.</i></span></font></div><div><font face=\"Montserrat, Arial, Helvetica, sans-serif\"><span style=\"font-size: 15px;\"><i>A curtain wall is defined as thin, usually aluminum-framed wall, containing in-fills of glass, metal panels, or thin stone. The framing is attached to the building structure and does not carry the floor or roof loads of the building.</i></span></font></div><div><font face=\"Montserrat, Arial, Helvetica, sans-serif\"><span style=\"font-size: 15px;\"><i>Curtain walls can be classified by their method of fabrication and installation into the following</i></span></font></div><div><font face=\"Montserrat, Arial, Helvetica, sans-serif\"><span style=\"font-size: 15px;\"><i><br></i></span></font></div><div><font face=\"Montserrat, Arial, Helvetica, sans-serif\"><i style=\"\"><div style=\"font-size: 15px;\">1. Stick systems and</div><div style=\"font-size: 15px;\">2. Unitized (also known as modular) systems.</div><div style=\"font-size: 15px;\"><br></div><div style=\"\"><div style=\"\"><span style=\"font-size: 15px;\">In the stick system, the curtain wall frame (mullions) and glass or opaque panels are installed and connected together piece by piece.</span></div><div style=\"\"><span style=\"font-size: 15px;\">In the unitized system, the curtain wall is composed of large units that are assembled and glazed in the factory, shipped to the site and erected on the building.</span><br></div></div></i></font></div>', 'https://thayaengineering.com/admin/uploads/files/qnz01y5o9ushf6d.jpg', '3', NULL, NULL, NULL),
(8, 'Aluminium Trellis', '<p>A trellis, usually made from interwoven wood pieces or metal, attached to the roof or exterior walls of a house. A trellis will beautify any house as a classy and modern piece of furniture. It’s not only beautifying your property but also strong and sturdy, built to last.<br></p>', 'https://thayaengineering.com/admin/uploads/files/k_h4lqj7fw30tmi.jpg', '4', NULL, NULL, NULL),
(9, 'Frameless Tempered Door', '<p>Frameless glass doors are often used as the main entry doors of commercial buildings. Frameless doors and enclosures do not have any metal framing around the glass. Panels are held in place by clips, hinges, and caulk joints. 10mm or 12mm thick glass must be used to achieve the necessary rigidity and stability. Frameless units are both the most popular and the most expensive shower doors.<br></p>', 'https://thayaengineering.com/admin/uploads/files/eih_alr8fkjgx2y.jpg', '5', NULL, NULL, NULL),
(10, 'Sensor Door', '<p>Automatic sensor doors are designed with attractive framing and sleek styles to complement any entry. Glass sliding doors are ideal when it comes to unobstructed views and allowing natural light into a building. Sliding glass doors are a durable and welcoming entrance solution. Automatic sliding door operators create easy hands-free access.</p><p><span style=\"font-size: 0.875rem;\">Creating an inviting and easily accessible entrance, automatic sliding doors are well suited to most organisations and commercial venues, but particularly supermarkets and hospitals because the wide access makes it easy to manoeuvre hospital beds, wheelchairs, shopping trolleys, and delivery palettes.</span></p>', 'https://thayaengineering.com/admin/uploads/files/1rfhwdyvsj638uk.jpg', '6', NULL, NULL, NULL),
(11, 'Glass Roofing (Skylight)', '<p>Glass roofs are one of the most effective ways of getting natural light into a space. Skylight systems allow you to explore new possibilities for designing buildings filled with light – with control of light intensity and energy consumption together with flexible installation.<br></p>', 'https://thayaengineering.com/admin/uploads/files/_izr7x5wfmkt60u.jpg', '7', NULL, NULL, NULL),
(12, 'Glass Handrail', 'Glass Handrail<br>', 'https://thayaengineering.com/admin/uploads/files/eq3pbvd5f8tn_yg.jpg', '8', NULL, NULL, NULL),
(13, 'Shower Screen', 'Shower Screen', 'https://thayaengineering.com/admin/uploads/files/r7si_wnu0xf1deg.jpg', '9', NULL, NULL, NULL),
(14, 'Composite Panel', '<p>Composite Panel<br></p>', 'https://thayaengineering.com/admin/uploads/files/fa3pijz9k1mexyh.jpg', '10', NULL, NULL, NULL),
(15, 'Sliding Window', '<p>Aluminium sliding windows are a popular choice for quick and effective ventilation.</p><p>Aluminium sliding windows are also useful in areas with limited space that cannot accommodate a window sash protruding inside or out – such as your laundry, kitchen or bathroom. Featuring our unique inline reveal as standard, our sliding windows offer improved thermal performance. These horizontal sliding glass windows are easy to maintain and operate, requiring minimal effort for maximum durability.<br></p>', 'https://thayaengineering.com/admin/uploads/files/pgz1qkebt7ch6x8.jpg', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Aluminium Window', NULL, NULL),
(2, 'Aluminium Door', NULL, NULL),
(3, 'Aluminium Curtain wall', NULL, NULL),
(4, 'Aluminium Trellis', NULL, NULL),
(5, 'Frameless Tempered Door', NULL, NULL),
(6, 'Sensor Door', NULL, NULL),
(7, 'Glass Roofing (Skylight)', NULL, NULL),
(8, 'Glass Handrail', NULL, NULL),
(9, 'Shower Screen', NULL, NULL),
(10, 'Composite Panel', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download_categories`
--
ALTER TABLE `download_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download_users`
--
ALTER TABLE `download_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `download_categories`
--
ALTER TABLE `download_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `download_users`
--
ALTER TABLE `download_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
