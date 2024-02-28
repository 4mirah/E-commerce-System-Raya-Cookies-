-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2024 at 09:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce_db`
--
CREATE DATABASE IF NOT EXISTS `e-commerce_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `e-commerce_db`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(255) NOT NULL,
  `UserID` int(255) NOT NULL,
  `Pid` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Image` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ID` int(255) NOT NULL,
  `UserID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Number` varchar(255) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `ID` int(255) NOT NULL,
  `UserID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Number` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Method` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `TotalProduct` varchar(255) NOT NULL,
  `TotalPrice` varchar(255) NOT NULL,
  `PlacedOn` varchar(255) NOT NULL,
  `PaymentStatus` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `ProductDetail` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Name`, `Price`, `ProductDetail`, `Image`) VALUES
(100, 'Biskut coklat', 'RM20', 'Kuih coklat', 'Kuih coklat.jpg'),
(101, 'Kuih bahulu', 'RM25', 'Kuih bahulu', 'Kuih bahulu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UserType` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `ID` int(255) NOT NULL,
  `UserID` int(255) NOT NULL,
  `Pid` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;
--
-- Database: `obsweb`
--
CREATE DATABASE IF NOT EXISTS `obsweb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `obsweb`;

-- --------------------------------------------------------

--
-- Table structure for table `bank_customers`
--

CREATE TABLE `bank_customers` (
  `Id` int(100) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `Customer_Photo` longblob DEFAULT NULL,
  `Photo_name` varchar(500) DEFAULT NULL,
  `Customer_ID` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `Home_Addr` varchar(100) NOT NULL,
  `Office_Addr` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `Pin_code` varchar(255) NOT NULL,
  `Account_no` varchar(20) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `IFSC_Code` varchar(50) DEFAULT NULL,
  `PAN` varchar(10) DEFAULT NULL,
  `Current_Balance` float(100,2) DEFAULT NULL,
  `LastTransaction` int(20) DEFAULT 0,
  `Mobile_no` varchar(20) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT 'Nil',
  `Debit_Card_No` varchar(50) DEFAULT NULL,
  `Debit_Card_Pin` int(4) DEFAULT NULL,
  `CVV` int(3) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Last_Login` varchar(50) DEFAULT NULL,
  `Ac_Opening_Date` varchar(255) DEFAULT NULL,
  `Account_Status` varchar(10) NOT NULL,
  `Account_type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bank_customers`
--

INSERT INTO `bank_customers` (`Id`, `Username`, `Password`, `Customer_Photo`, `Photo_name`, `Customer_ID`, `Gender`, `Home_Addr`, `Office_Addr`, `Country`, `State`, `Pin_code`, `Account_no`, `Branch`, `IFSC_Code`, `PAN`, `Current_Balance`, `LastTransaction`, `Mobile_no`, `Email_ID`, `Debit_Card_No`, `Debit_Card_Pin`, `CVV`, `DOB`, `Area_Loc`, `Last_Login`, `Ac_Opening_Date`, `Account_Status`, `Account_type`) VALUES
(1, 'Nur Ameera', '123456789', 0xffd8ffe000104a46494600010100000100010000ffdb004300040303030303040303040604030406070504040507080606070606080a0809090909080a0a0c0c0c0c0c0a0c0c0d0d0c0c111111111114141414141414141414ffdb0043010405050807080f0a0a0f140e0e0e1414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414ffc20011080190019003011100021101031101ffc4001b00010100030101010000000000000000000001020305040607ffc4001801010101010100000000000000000000000001020304ffda000c03010002100310000001fd8baa8280500a0140000000000000000000000000001a814140280500a000000000000000000000000000692828280500a014000000000000000000000000006905050500a014028000000000000000000000000068282828280500a0140000000000000000000000001a0141414140280500a00000000000000000000000079ca0a0a0a0a014028050002000028000000000000001e7050505050500a014029002000140050000000000000798a0a0a0a0a0a01400520adb97a72dd966435d79f4f2e92aa8b250000000000003cc0a0a0a0a0a0a01410a0e8737a62c0941031af06de5dda5929400000000000794a0a0a0a0a0a0a00053abcdb600000007836f16d56964a00000000001e5050505050505050407539b7c500000004397d1a3569948280000000003c80a505050505050087a72ea600000000086aaf9feb7d46525050000000003c80a0a0a0a0a0a0021d6e6f440000000000f8fe8f569eb8a528000000001e305052828282828210ef72500000000007cf69f35d5f452faa4a50000000003c60a0a0a0a0a0a010c8eef128000000000722be2fbbd51de97d5250000000003c40a0a0a50505052101f41c4a0000000001c7dbe2babd31e85edc7a64000000000f09414a0a0a0a0a018981f45c9900000000003e6f6f96eaf49ba36cbd93d12000000003c0528282829414148431aea727be00000000101f09d9ceddf549ba5db199d6937c2800000078014a0a505050500842c7d0f300000000247974fcd7d37d799e98dcbb233323a926e000000073ca0a505050528290189aadeaf39d2ca8000000247c07a1cdddf5e67a65db19999914e949b8000000e782829414a0a0a002185be74ef727be00000007c6757ccf5bec8f5666f5db1999190323a126e000001ce0528294141414a080c4c6df11d4c4ef73285048579cf87eee1f4bed93d397a236cbb0ccc8c8a529ee93700000734a505052829414000c4c6dc0e6e9cc4fa1c3b1cdeb8c0e6edc0e8f9be9733d31ea8f4c9ba36cbb0c8c8c81914a7b64da0000e682829414a0a0a00210c6b13139db7cc5ba6b0585b3647a0db1e993d07a23746c5d9191994a532294f649b0000e61414a0a0a500a010df1e98f4e5be361e73e7fabe6b6f2db4e8667770fa3e6d8792bc5a7874f06ac364646c32294c8a53293d26c001cb2941414a0a0007bf2e861bc0000000000040736b8bd1e7d364b9991919032294f449b003960a50528290a436c76f9b7828000000000001042b8bb71ba5d91b0c8c8c8a52964de660e51414a0a0006e8eff0036c0000000000000000091c9e8e2746d9733232322c94a537191c929414a0a4023e8b0f44428000000000000000208f9beaf2eeec8d8646459294a5361cb0528282821d1cbb5800000000000000000001e4af98ecdd2ec333232929414a73802941410c4fa5e4f48000000000000000000043e53b22ed3333329294141cd0505280429f59c80000000000000000000087cf7578f576c6c33932294a5072ca0a0a010f465f4d80000000000000000000024713ab99bbb63699c9994a50539250528290c63db1f47800000000000000000000071f6e3f46e9769b24c8a640a0e482941410c63dd1f478000000000000000000002472ba389d1bd76c6c9323206401c8282940218c7be3e8f000428000000000000042804393b717a37cbb4d9264640a640e314a0a5210c63df1f49800392750c80000000000001cfae84010e4edc5e8df2ed364991914a5071814a0a4218c7be3e970007ce69ef3a990000000000000f9ee8fa1e6007276e274be88da672665294a0e29414a010c63df1f4b8003e736f01f6580000000000000f8eeafb0e4a01c9db8dd2ee8da6c93232052838a0a0a5210823eab9bd30a1c5d3e576fd17900000000000101f07e87de79d49038dd1cbdddc6d32339294a0a710a0a0a0848c2b915dbcbeb39b71c8d3e0fabf54e0000000000004313f3df4bf44f295e3ae2f47934df2ec361999494a505386528280086260713579f67d0e1d3cbe43adfd7fcf242ac28000000204af0d7c777bf4bca72b6f369ba36aed8d8672665294a5070c14a0a00313130b7929ced35ac4ede5d6cbab97463db19000000d478abc9a7874f069a6b62ed8d86c8d86c339333232052829c2282829402189095cc5f0d44c6b13031557a24f42ef338a2b035690db96d4dd1b0d8bb0d9199b0ccca4ccc8a5294a01c30505282900202573d7c84a8448016da646464666699c6c33364b99b0ccccc8ce4c8c8c8a5294a0a0e1141414141402029e1b7ca0a42829914c8c8c8ccc8c8ccccccc8ccc8c8ca4a645294a505053840a0a0a50500a003c96f9c250b914a64532323232324c8ce2995b919494c8a640a52828283845050505282828050798d342c64529955328a6464645aca2991914a53205294141414e10282828294141414b034569294c8a64529914c8c8191914a5294a52941414141fffc4002d10000103040200040602030100000000000100020304051112304013203350061014213134153222253580ffda0008010100010502ff00d4ad8dce4200846c0b50b56a3131180a20b7da402e2c880e0203949116fb3805c58c0c1c52c5ecd13341c933343ec70b76772c8cdd9149b7b1c2dd59cd706982a61944adf60fcf42eadcc4c71698a5120efb7fb73dcbf51bf8692d314a241de1f63cf73fd467e02692d314a241dd287dc735ddf889a8208120c52890770aa57663e6bacbe254b5043e4320c72078ee4327853f2d44cda7872e7b9a1043e632147207f71edddb4951e2b792e559f532b426a1e5fc28e4d876dc1cd75354b2a5bc572b96535b84d0821e61f64c7eddc918f0ea5b9c72f04b347036b6eafa84c6e134201043818fdbb9554c2610d7d5d228af913932e34722fa884a75553b54978a18d4f7e91ca4925a8734201350410e163f3d9cfcbeeaa69c4a1cdc12d0b45aad504d69720820821c6d767acd865726d2214d1042360f93e18e455769f153ed55ed5f435685beb5ca3b3563d436485aa38a385a5ad29d494ef4eb64053adb2353a296240f1b5d9e97e53299c5362633a725144f52d3cb0a07881e8471ba531c4d8faf5147c60f3451995cd6860ec5553ec87103c982e3147e1b7b5551784fe21c748cc9edd447e24410e99503348bb92b749874d8367f76b86250874a94667eedc020874a8fd6eed7ff0040821d1a2f5bbb5fe9b50e9517adddaff4da821d1a2f5bc97197c1a61f8e94b26b3f92bfd36a0874687d6f25efed6eb7cde3d174aa9dfecbc95de9b50e950fade4beff00caf85dfbd9fa4f76d7df2577a610e936a0d2ba19e2a86fceec36b77c24fcd2f4a077897af25648c2021d229ec9699f4b7c6951cb1ccd574fd0f85dda4fd171d45b3f7be52d4c51292b249134610ea15514f84c7490ba1be5446aa6e74b554766cc572e8d63b4a6a1d63a992e3185255cf2a0d4021d79a0c2d56810058e8eed5d1a8eff0094dbc513932b29a44083c2e918d4eaea56275d2009d7590a92a2a260020d58402c7666870b0b55aad568bc30b4c26c93350abac085c2bc2fe46e0bf90af5f5d5a519ea1cbfcdc8310620d402c2c2c2c2c76e585616ab55aad56ab55aad56ab55aad56ab5585858585858ef4912c2c2c2c2c2d56ab558585aac2c2c2c2c2c7b13e3f961616161616161616161616163d95ecf73733d83ffc400141101000000000000000000000000000000b0ffda0008010301013f011c4fffc40023110001040202020301010000000000000001000211401250303110200313328021ffda0008010201013f01fea595929f32b2d5cf0e5a7e913c60e989e5074876479da8ec5bb26ec99dec99de8ddcec1a3239869488e56b634bda2238dadd439b1c004a6b3520a2d95f5ac542841887c687f9ab1ef2a54e92564a54f9cd66b20b20bec45fe6566b3537e6a0283adca9ae1d67ab4d360db69ac6e0d98d936a1bcca8ebcca8ebcca8ebcca8ef5165951deaded3bba63f27d5b51deaced3fba63f3eadb2ded7c94cfe7d5b58b3cb7b5f2537f5e6106d88582c53faa413d62a2f60b05828e3c562b04078953a480b10b10b10b10a07f08fffc400321000000305050606030003000000000000000102031112214022315051610413203032411023335262a1427172808191ffda0008010100063f02ff00297213170b85de1644f097244e67c8987a66583b8b99127fde0daf35e5d27823f2e71a41a4e4d13796244d9128c7cbbe02ea04afda6224de3e5dcb002a05f8449bc7cb0f5f8c49bc7cb0e4a3dc7c0f2bc7caba1fc9323e7eefb33e1790d6b5df8b4bff007ce53557606b5752a7c4f21ad6197fc102fd647573776ccfca477ccf90f213beb09ab29344fd894965d48cb967b36ce7a2d45cbd6b37cc0e16c5f6376dbcb6f91f2236aa852375b3d865dd5dcf9b3beb1e5d6207bd25f818f39068fb165a90eb2169a1092e23d043b3a21f9188db2a2573e7572211149a872afe2b24f2a0d69ae90b4a173c48bc1ea29e62266ab63a1e5a0f4cc596462db901ed95bcfa10334c29132169990b164585443cc4bab9c41eb968245453166cab40f39a732ab715d9895f9d39ad95fdd352e2e9ee214d4ef11d5de9e12bcc3bbf7ab88ba554c6b3ed7561977be988ab549ed4849ae49e7485a5720f124e24589154c7a9523247b9fc2552d55938c316bee4951ec89feb84aa769fe43023ea4c8e8d09f62784a93790bd1dc46c951170372f886acfd8aa3de709208deaa4d06fb65543990876a4c3f32113251293a7836fe43565ef9d119823fdf8cce7910726ca69e24f4e42362a34ab320e6e8de6a520d1046e6865d219e4a79512cf40968a924796518be14e45551a3a72f125a24a2b8c5a38cb51e63176a26a349ea2c342123e4ccc4d62c3d42c3376a2168ab3957448bb8e42cacc49a98f547a9f43d4fa136826b31333c1224e271271379626f2c4de5807ffc4002a100002010204060203010101000000000000011121311040415120306171819150a1b1c1f0d180f1ffda0008010100013f21ff009d649249f8c92c6a1b8adf258074437681ad2052e9e83285827e22e49955e44590b28f4804fc3ff802beaf97fab09fc2dd6fbfc8885776e734b1e9dc645cb8d7f826e8406eebcf75d2486b78366259f03124151473e98d7f20a8c81b7d3e00abbd90fc6fc8f46e4f68536925d67de17b641e3acd7e4b18121908469d369d1df3d6486acf9ffdd105ab1b496200ecced49adc8f67cf4855b5f6efc090faac8d3a67711d137d39da6268b77a213bf2c6cfbe02604219ba88410f394d85eaea398fd04dfaf33ae9a91331f65b00410421609b6d411166d63e3fa49b3253a3baedcb52c94ff848ff00660288210b166d2ae2d21e68f0fc21d4d98ed53a8e926fa721fd746ffa27a4652c2bf5c0090410b8551cab912332b18f72df93eca1fbfbf67d768d7c6ce82b2f795747c938ba3ac925ec924bfa9613e15b0905130210b810a539572c6ecc31a0dec555632dc2d063114de46069d7d91dd90daa2257a1526a35489d9a73d874af423a3c642171242a11e1e512495151dce832fe02e1e42c2a222c3e0c89c6d8ec50526fb48d347ea1b479141d2a7de647b25b6540a092344298535d4bf03587dcaf27a1d0610cead040842e354728b077e7ce2a5a197b15c60379b7c9349a8a915b4eb0a0a74961085c5627a3bf3e7d1a05dc22a275659dcd87723f426d51d1ec2171aa13f7e758925e2fa212ccc66ba2d5a8d284210b8a4e6241d1042d7b9d737ff9acc4c42c170a1b95276d4ce36ad47743e042e3d394c4877757e73b04d8e576c0842e2d39327529acf7467f8c442e7b3d8d9ef04de2210b874e57e179efb1c117169cab9db3df64b30217169c8632e76e16d252f293c3f64b3110b9ac65eedc2d62edfb634a35aac9ff004f470fd9e00b8b4e431973b70bff00244c52872b26281bc33f5c3f704c0842e6b1977b70a36a579c0d68bbeec9bf4aa3e570fddc64217398a2dd16e911d5ab175df8272dc76cdf7939e4b34d7ae18900ec85c0842e732a50ebb09147d0b7a21667c1e85e756ad38549dd8fe698c925ae8a446dec7a9fde335f2d35c020842173d9d56d4b3e5efb0eb02c29113bc1936225b8f216bd992dd3a1791da3126517beb143a9e81b95c041212160b20c8d2e8b73a8390f415751f8dd85b7db4afb10d0d5d8cf190414cb1e604f287db9360d79290b9e952d8fa0a0f72a8d521f428288856502c2209090965208f4552bad15e232d5dd0fac2bccd3ee5090f2cfd892c5eca44bd3e86fafa1ab7c50bb2f23773793aafd89ee2569828a2820824242165a3d106c6ab950f4514104104514114104848484b33044fd8b9671a08a28a082090909104677b7ea88e50010410412121212208c633908c1041041040910410409118411f091420a14e158ac68539fffda000c03010002000300000010249349809249249249249249249249249249249249a44269249249249249249249249249249a4924d26024924924924924924924924924924d249269109a49249249249249249249249249a6924934980924924924924924924924924924d349249a44269249249249249249249249249a69a4924d26024924d249a4d24924924924924d34d249269109269249249349249249249249269a6924934910d266da4904a4924924924924934d349249a443744a4da2529249249249249249a69a4926da4000000000180924924924924924d34d249269d00000000854249249249249349269a69249e00000000020d09a4924924924924934d349a4800000000001f36924924924934d249a69a4d700000000000cd724924924924924924d34da4a000000000017ba924924924900d349269a6de800000000000f8049249249240a4924934d37c000000000013bf0a49249249a4034d24924d080000000024f8c5af24924924d029249249250000000000c33612c6924924902900d349269e8c000000012dc2c96349249240340a4924925c280000000fb7896595a49249100a4034d24d3425a4034d816f6d924a924926000d029249a4d185ab6264d094b659244924900402900d36d91de7f5ac99f262cb6c96349240800340349254ca2a76a3050a0b24b2599249a40100000806000000000000836b944b2d0924d020004126900000000000004d3cd365b4a49029000922800000000000000000c0ad34f4d360340824d04000000000000000026f3042d269340a60240000000000000000000007db424da4900d02d400000000000000000000872c0934d00d0001000000000000000000000211b3b49340a40804000000000000000000000d46ccd269820349d80000000000000000000004793349344029252000000000000000000000c1c4e9a6d02002d480000000000000000020026fb3a6d240100b720005000000000000008009beded24d100824d80034000000000000018004893340260004012000080000000000000f001064c900900402476290b00000000000090c1a6d9482980080001fb44f40000000000024fa46d6804260800020b7ed1c1a2000000012131a4c429b4924402000db105ed500000004c19694d87249269260800024a83b7a4f05b2017fe4590a4d34934910002012d8a4b6f00492f3564946c9a6924900982080090cd965b2db65b6cb200d36da49240244000100360a6091682035f10d24db4d249000260000020104a6d114b54929829b69a6924000910082081612db4082d120b4024934d349fffc4001b11000202030100000000000000000000000111105000809020ffda0008010301013f10ea08d535e162ad78e4997d1235ca4592d82fffc4002111000201040301010101000000000000000001111021405020303141516080ffda0008010201013f10ff0052b88d8912489c41392352e99e104098b5049b1e4d8cddc9df48dded2b44f981ec7479ff00303d8c7a0f9823f4746b3be1f7007ef08cd425fbe25a244ddac4912847dd86892c63d0aaa475cf7637f063d2b7c09719a3043763746f4dfa08f23643644890d67ea220ee31e8e49ad865444a250d9240817103d135186e48626c452d45a0d1b9259313082579b1465b78708812ca701e2a29fa642b8de49908c8c5f0697950483c57ccf43f315bcc91a561a1bcef3c1eb4f89eb4e8757af1d5e078cd743abc0f1c8f0d70743abc55e824363c67be0f15e62df86b7f067be0f01a91a22be02df0d62a9a262d9f03c85be22a89dd16a315098d18e4264cba89ef4cf624a138a24c64a9108771a0c364365d72138ad1689cc13acd649247ce7de49249249ce44f09249a58b162c58b5649e724ebe49cd927ae49ac93fc9c93a1ffc4002a1001000201030304020301010101000000010011211031412051613040718191a150b1d1c1e1f0f1ffda0008010100013f10e91d6ff8e1d075bd47f86dbac75bfe237835d23a0eb7a8ff0009b69b758eb7fc36f2ea6f06ba4741d6f51fe086a0dcdb4dbac75bebb97d57074bf663706a6f2ea6f06ba4741d6fa2e5e8a1bcaf12b2b2bde5cb83a5fb51a83736d36eb1d46592ee18f32975cf68a5f91626e8bfc4d99c72e607b7e09bb7e09b7dfdc875fca625c6af30fc25c197ed06e0d4de5d4de0d748e83adcbe2180ee3c10f3ef762056db4bd2895aa52a7783366ebc885be60cbf6c3506e6da6dd6351742056bbbd89bff0079e65f4d8b0cee1fd92cdb637f99707da8dc1a9bcba9bc1ae91b8b5062ad06ee020d839df6f1ea62ab8652152e4e060c3d90f48d41b9b69b74dc597037b7f3eafd4aadb4b7d86d33a50dc04e65e53f30743d61ea1b8353797537835ade952a9959cef5ea9ac2db96e1a44f96c1cf9843d71d07a46a0dcdb4db45a8b73e489051d857ae3922b3da1d60e7e7c4bb9c2e4b83ff00beb8e83d43706a6f2ea6f06a2dcba9f8b7b019391643dbd8437ca0709da63bdc73c3bfb11d07a46a0dc1a8372ea2dcb5f647b0137210858b9a2370e9301b15bf2991d8f5c3a0f50dc1a837a6f162680decb7ee385602279f5f39d0ca778150ee3682e124a86c577bcfab7d23a0fa0b0a265102fa4f2571faf55d1dad82ebe6128a06d0433173052509b0038955877f52f51d07d0de389695501ac677b1fe9eaddc44f09df5c07cb2e0c25caae115e3484307104bd401ad1dc895ea5f48e83d3b68c42bc81841b4066768d383e19fdfa6b5934329da0606a7c094ee1c695269182086f70ba50ccd840e3bc4af9f52f51d07ad8ed05f87bce2819fb65c8c79ff00db59b8f0fa4a05bb72cc82e56c56cb1bf961e5df679944c7a060821d980c08f420bc72e3d11d6fa4741d56a336d0e1bfd42dc469f207919486cfb966f786d7bf697f539d71a6d5ac5e57b0dd60e4bb47624c6c81b37e6e59a756818206878811bc436836343f733cefd63d37a8e83d0b7a6fa04b5d3722b1a38ac34f31c11880a80e0592185872ec7d6214643baff708b67d7fd84a1cdd4ffb0240b6759f9689566f632ebc1b4be0fbab03b06c1308aee273ca3a411040d03104616a10098bbfbfa43adf4de96cb9716a23ee07765190bf1292c0700b11957c2c2d715288cd4073046ac39ac40e447da7264f961837f74432c38636ee3109f9250a10e15fe4dcbf6c46cc0cd90d9de1a8f41084081a09766f03618dbe7ac7a6fa2f4b8f74aad197c66515a22b432f9262662e77509da3b100300f8c41254ec30c585edb4bee36f2f057e239959fbc00a7e584051bd6cfa202ece5fd16cd9a78757e57988daf80306c93cd53fa8566de1a7ee15f949956af14b5f0911ce7b6971433081020409604a486763cfa6fa47520eabc67f119d8f8016dca7f0665a99a3f3e5f63c622221308e4485376c9b4be48f290e2b03c9c42379798fecef14ca102040810b564afd22f51e9bd302feccac95f064a5826e6ee95ec909fdc412859d980a3b2f627bffe230920d2b0dc7a4840812ae04b2b26c1d43065f48cb2592e775cbb04fdf413e5f71b4c721df086efccce7e634c706d16a1020686369533bcf883074bd474b97084b401f30aecb3dcd1b7b7e76f99fd4012a7b036e523731de934040b81a60e25bbe83060cbd6ea5c62ad63f31dfde00858fed23223c35f88b4a8420408102645074183a5cba9772e60aef88c468abf3ef083677845a91f232457d18d020409cba060c197a31cad5abefdef24ac7b50fbf4220681a561d4741832f4502e6c1fc0f7d77887f51d931e886a711dd2fa462c58b334f6f7d1cbd9ff0051d868504210d0da72d0751d162c599fcbf7c2d2701a4d69210840c4e508307a1628a3fc9e9bd146d6fb44082e5d8e8769b091869cb461a109da3b3065e83aba14fdef4a7b48d7c570925808f713d9a8ed190ef4be876821d84130d2431a92b2d061065eaa6c9fb7e973b9feda5c3057bec57b335cc0ef1d43c074e6f0c4de04bc41d065e971d4fa37e9df57f625c7809c9587b370b6ca766e673d23b48748d04de18d1dba061a319446fec8ee1f1c837480da3932761c4db7de32e16c86563b9a878b7b209b882ef8092b4fbfad0bbd83903e65041056a10d0da3b6a3a0cbd1997fd80dc4c2a54036f7739bd9105c7095b7cee271d409f9768df10097025398028f2b7f63b442a865f44dcc9b5f8ccbcd4cfc31e423f98f3da068e708de7960a53772ae740d4ce08a068427897d2318ea0234b5812e3be05fb41a1bb24faa38878454711ddac3298481e7ed11952538b38d1663d3be8a8f03ec2a9b94cfc648e58fc085239ec8aecbbc27361e7328f896caa5d0542097a18e8bd47a18906e6f7120a2cdc665e6325c7c78842eb0f13754add1483286e2450a8706c7c2a03e450bfa48507791fec872cfc367e19484f743e86081dfcf823b67d97fe92eaf4e429fb86d46ecbfd208455a018f89886c6d50daa0730b82e51b7e34ab974aa198621a19d07a2faf789187044b7b8cb560b27c7c44ecde3cb98b80ee4d888ec88f8525af8311ff0060f4736fff0069b78ed94c7327894c05bf77fc8367e87f8471a9787fc4fbaeca63fef1feca736fcaff006734fb666d54d1ab1add5a54e98a8218868674bd07a2fa6ea56951337f923e196e4be96590e265f31861bcc6781894609dc9f09d9229b9a2dda0f10fb4ae5f2be9a1a34288102b4310ce83a0f55f46fd152a5129da2b0790996dbf558b429093a22d12d94f4aa9484042188660d43336f4ef51a86657995ad4a1df69534f704cf6df50bc24ac2f0924f4400a041015084620d40b8634dbd3be91d0256876e1969e6ca693f384924921d1249248a610108040842108621983506e6da6de9dea3a5c197a56206205ec1c9282077407780a008040201de01de53bc03bcc7788ef0aef0aef0f283dd04ef04ef04824120906e0d4de6d378635ffd9, NULL, '1011291', 'Female', 'Kuala Terengganu, Terengganu', 'Marang, Terengganu', 'MY', 'Terengganu', '21100', '1011301011291', 'Demo Branch ', '1011', '6789012347', 50.00, 0, '0116556890', 'nameera@gmail.com', '421390992952', 2456, NULL, '2002-08-17', 'Pasir Panjang', '28/02/24 05:33:12 AM', '26/02/24 03:22:26 PM', 'ACTIVE', 'Saving'),
(2, 'Nur Nasirah', '123456789', NULL, NULL, '1011382', 'Female', 'Machang, Kelantan', 'Kota Bharu, Kelantan', 'MY', 'Kelantan', '18500', '1011511011382', 'Demo Branch ', '1011', '6789010080', 100.00, 0, '0179524311', 'n.nasirah12@gmail.com', '421335811464', 7036, NULL, '1989-12-09', 'Temangan', '27/02/24 01:29:23 PM', '26/02/24 03:58:32 PM', 'ACTIVE', 'Current'),
(11, 'Khairul Anwar', '123456789', NULL, NULL, '1011549', 'Male', 'Machang, Kelantan', 'Machang, Kelantan', 'MY', 'Kelantan', '18500', '1011731011549', 'Demo Branch ', '1011', '6789024300', 200.00, 0, '0179524315', 'khxisaki@gmail.com', '421370637323', 6629, NULL, '2004-07-11', 'Ulu Sat', '27/02/24 03:31:41 PM', '27/02/24 03:20:32 PM', 'ACTIVE', 'Saving'),
(12, 'Syah Tarmizi', '123456789', NULL, NULL, '1011798', 'Male', 'Tanah Merah, Kelantan', 'Machang, Kelantan', 'MY', 'Kelantan', '17500', '1011671011798', 'Demo Branch ', '1011', '6234024300', 300.00, 0, '0199023049', 'starmz1@gmail.com', '421338142385', 9574, NULL, '1978-11-28', 'Alor Pasir', NULL, '27/02/24 05:33:39 PM', 'ACTIVE', 'Saving'),
(13, 'Ain Solehah', '123456789', NULL, NULL, '1011610', 'Female', 'Bangi, Selangor', 'Petaling Jaya, Selangor', 'MY', 'Selangor', '43650', '101131011610', 'Demo Branch ', '1011', '6789023471', 1000.00, 0, '0112345489', 'a.slhh1@gmail.com', '421361985281', 8220, NULL, '2000-03-10', 'Seksyen 3', NULL, '27/02/24 05:33:52 PM', 'ACTIVE', 'Current'),
(14, 'Muhammad Naqiuddin', '123456789', NULL, NULL, '1011905', 'Male', 'Bachok, Kelantan', 'Machang, Kelantan', 'MY', 'Kelantan', '16070', '1011351011905', 'Demo Branch ', '1011', '6789022334', 444.00, 0, '0123454678', 'mnaqiuddin02@gmail.com', '421339716775', 4543, NULL, '1989-09-09', 'Jalan Bachok', NULL, '27/02/24 05:34:04 PM', 'ACTIVE', 'Current'),
(15, 'Ahmad Syamim', '123456789', NULL, NULL, '1011316', 'Male', 'Machang, Kelantan', 'Machang, Kelantan', 'MY', 'Kelantan', '18500', '1011411011316', 'Demo Branch ', '1011', '6789021982', 1000.00, 0, '0123456789', 'asyam11@gmail.com', '421359068574', 3883, NULL, '1980-10-09', 'Kampung Labok', NULL, '27/02/24 05:34:17 PM', 'ACTIVE', 'Saving'),
(16, 'Adam Fatihi', '123456789', NULL, NULL, '1011390', 'Male', 'Besut, Terengganu', 'Machang, Kelantan', 'MY', 'Terengganu', '22300', '1011731011390', 'Demo Branch ', '1011', '6789324400', 300.00, 0, '0198723201', 'afatihi34@gmail.com', '421336115304', 5612, NULL, '2006-12-03', 'Kuala Besut', NULL, '27/02/24 05:34:30 PM', 'ACTIVE', 'Current'),
(17, 'Siti Batrisyea', '123456789', NULL, NULL, '1011958', 'Female', 'Machang, Kelantan', 'Machang, Kelantan', 'MY', 'Kelantan', '18500', '1011531011958', 'Demo Branch ', '1011', '6789022339', 100.00, 0, '0123425477', 'sbatt21@gmail.com', '421365852524', 8689, NULL, '1988-02-13', 'Tok Kemuning', NULL, '27/02/24 05:34:42 PM', 'ACTIVE', 'Current'),
(18, 'Nurul Atyrah', '123456789', NULL, NULL, '1011897', 'Female', 'Kota Bharu, Kelantan', 'Machang, Kelantan', 'MY', 'Kelantan', '18500', '1011841011897', 'Demo Branch ', '1011', '6780234300', 1000.00, 0, '0112908723', 'nuraty31@gmail.com', '421353627822', 1093, NULL, '1992-02-12', 'Temangan', NULL, '27/02/24 05:35:11 PM', 'ACTIVE', 'Saving'),
(19, 'Shazurin', '123456789', NULL, NULL, '1011139', 'Female', 'Puchong, Selangor', 'Petaling Jaya, Selangor', 'MY', 'Selangor', '47100', '1011441011139', 'Demo Branch ', '1011', '6789022110', 1000.00, 0, '0192310923', 'shzrn12@gmail.com', '421368591567', 6755, NULL, '1990-05-24', 'Puchong Utama', NULL, '27/02/24 05:35:23 PM', 'ACTIVE', 'Saving');

-- --------------------------------------------------------

--
-- Table structure for table `bank_staff`
--

CREATE TABLE `bank_staff` (
  `Id` int(255) NOT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `staff_id` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nill',
  `Gender` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `Home_addr` varchar(50) DEFAULT NULL,
  `Last_login` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bank_staff`
--

INSERT INTO `bank_staff` (`Id`, `staff_name`, `staff_id`, `Password`, `Mobile_no`, `Email_id`, `Gender`, `Department`, `DOB`, `PAN`, `Home_addr`, `Last_login`) VALUES
(1, 'Admin1', '210001', 'password', '7412225696', 'admin1@gmail.com', 'Male', 'Human Resource', '10121995', '14569855', 'Kuala Terengganu, Terengganu', '28/02/24 05:31:40 AM'),
(2, 'Admin2', '210002', 'password', '0178990098', 'admin2@gmail.com', 'Female', 'Human Resource', '10121996', '14569855', 'Kajang, Selangor', '27/02/24 05:32:54 PM'),
(3, 'Admin3', '210003', 'password', '0179524311', 'admin3@gmail.com', 'Female', 'Human Resource', '10121997', '14569877', 'Machang, Kelantan', '22/02/2024 06:35:47 PM'),
(4, 'Admin4', '210004', 'password', '0178999088', 'admin4@gmail.com', 'Male', 'Human Resource', '10121998', '14569888', 'Kota Bharu, Kelantan', '18/02/2024 03:11:24 PM'),
(5, 'Admin5', '210005', 'password', '0178996544', 'admin5@gmail.com', 'Female', 'Human Resource', '10121999', '14560488', 'Machang, Kelantan', '23/02/2024 03:11:24 PM'),
(6, 'Admin6', '210006', 'password', '0179524433', 'admin6@gmail.com', 'Male', 'Human Resource', '10121003', '14560011', 'Dungun, Terengganu', '24/02/2024 02:22:47 PM'),
(7, 'Admin7', '210007', 'password', '0178995467', 'admin7@gmail.com', 'Female', 'Human Resource', '10121004', '14560022', 'Kuching, Sarawak', '21/02/2024 03:11:24 PM'),
(8, 'Admin8', '210008', 'password', '0179525647', 'admin8@gmail.com', 'Female', 'Human Resource', '10121005', '14569540', 'Machang, Kelantan', '26/02/2024 10:22:01 PM'),
(9, 'Admin9', '210009', 'password', '0178990072', 'admin9@gmail.com', 'Male', 'Human Resource', '10121088', '14560605', 'Machang, Kelantan', '21/02/2024 07:09:34 PM'),
(10, 'Admin10', '210010', 'password', '0179526778', 'admin10@gmail.com', 'Female', 'Human Resource', '10121010', '14569001', 'Machang, Kelantan', '26/02/2024 11:39:01 PM'),
(11, 'Admin11', '210010', 'password', '0112996544', 'admin11@gmail.com', 'Male', 'Human Resource', '10121011', '14560111', 'Machang, Kelantan', '21/02/2024 03:11:24 PM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011139`
--

CREATE TABLE `beneficiary_1011139` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beneficiary_1011139`
--

INSERT INTO `beneficiary_1011139` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Nur Ameera', '1011301011291', '1011', 'Saving', 'ACTIVE', '27/02/24 06:20:14 PM'),
(2, 'Adam Fatihi', '1011731011390', '1011', 'Current', 'ACTIVE', '27/02/24 06:20:49 PM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011291`
--

CREATE TABLE `beneficiary_1011291` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011316`
--

CREATE TABLE `beneficiary_1011316` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011382`
--

CREATE TABLE `beneficiary_1011382` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011390`
--

CREATE TABLE `beneficiary_1011390` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011549`
--

CREATE TABLE `beneficiary_1011549` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011610`
--

CREATE TABLE `beneficiary_1011610` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011798`
--

CREATE TABLE `beneficiary_1011798` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011897`
--

CREATE TABLE `beneficiary_1011897` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011905`
--

CREATE TABLE `beneficiary_1011905` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011958`
--

CREATE TABLE `beneficiary_1011958` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011139`
--

CREATE TABLE `passbook_1011139` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011139`
--

INSERT INTO `passbook_1011139` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '230730363', '27/02/24 05:35:23 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '970398626', '27/02/24 06:18:02 PM', 'Cash Deposit/970398626', '1000', '0', '1000', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011291`
--

CREATE TABLE `passbook_1011291` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011291`
--

INSERT INTO `passbook_1011291` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '677872891', '26/02/24 03:22:26 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '484721143', '27/02/24 06:15:40 PM', 'Cash Deposit/484721143', '50', '0', '50', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011316`
--

CREATE TABLE `passbook_1011316` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011316`
--

INSERT INTO `passbook_1011316` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '166283954', '27/02/24 05:34:17 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '215977456', '27/02/24 06:17:13 PM', 'Cash Deposit/215977456', '1000', '0', '1000', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011382`
--

CREATE TABLE `passbook_1011382` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011382`
--

INSERT INTO `passbook_1011382` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '339415611', '26/02/24 03:58:32 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '319748075', '27/02/24 06:15:57 PM', 'Cash Deposit/319748075', '100', '0', '100', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011390`
--

CREATE TABLE `passbook_1011390` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011390`
--

INSERT INTO `passbook_1011390` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '697395958', '27/02/24 05:34:30 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '656583589', '27/02/24 06:17:25 PM', 'Cash Deposit/656583589', '300', '0', '300', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011549`
--

CREATE TABLE `passbook_1011549` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011549`
--

INSERT INTO `passbook_1011549` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '469524171', '27/02/24 03:20:32 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '522386227', '27/02/24 06:16:12 PM', 'Cash Deposit/522386227', '200', '0', '200', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011610`
--

CREATE TABLE `passbook_1011610` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011610`
--

INSERT INTO `passbook_1011610` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '265295381', '27/02/24 05:33:52 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '728753616', '27/02/24 06:16:42 PM', 'Cash Deposit/728753616', '1000', '0', '1000', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011798`
--

CREATE TABLE `passbook_1011798` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011798`
--

INSERT INTO `passbook_1011798` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '218223371', '27/02/24 05:33:39 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '756144529', '27/02/24 06:16:29 PM', 'Cash Deposit/756144529', '300', '0', '300', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011897`
--

CREATE TABLE `passbook_1011897` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011897`
--

INSERT INTO `passbook_1011897` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '668742592', '27/02/24 05:35:11 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '769785637', '27/02/24 06:17:50 PM', 'Cash Deposit/769785637', '1000', '0', '1000', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011905`
--

CREATE TABLE `passbook_1011905` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011905`
--

INSERT INTO `passbook_1011905` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '846595137', '27/02/24 05:34:04 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '833698572', '27/02/24 06:16:59 PM', 'Cash Deposit/833698572', '444', '0', '444', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011958`
--

CREATE TABLE `passbook_1011958` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passbook_1011958`
--

INSERT INTO `passbook_1011958` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '983406722', '27/02/24 05:34:42 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '744925061', '27/02/24 06:17:39 PM', 'Cash Deposit/744925061', '100', '0', '100', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `pending_accounts`
--

CREATE TABLE `pending_accounts` (
  `Application_no` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nil',
  `DOB` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `Home_Addr` varchar(100) DEFAULT NULL,
  `Office_Addr` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Pin` varchar(50) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Account_type` varchar(50) DEFAULT NULL,
  `Application_Date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pending_accounts`
--

INSERT INTO `pending_accounts` (`Application_no`, `Name`, `Gender`, `Mobile_no`, `Email_id`, `DOB`, `PAN`, `Home_Addr`, `Office_Addr`, `Country`, `State`, `City`, `Pin`, `Area_Loc`, `Account_type`, `Application_Date`) VALUES
('849912977', 'Anis Anisha', 'Female', '0134234390', 'anissha@gmail.com', '2001-05-02', '6789209100', 'Pasir Mas, Kelantan', 'Machang, Kelantan', 'MY', 'Kelantan', NULL, '17040', 'Alor Tualang', 'Current', '27/02/24 05:29:34 PM'),
('967737469', 'Amirah', 'Female', '0123456789', 'nuramirahsyahirah02@gmail.com', '2002-04-16', '12345', 'shah alam', 'selangor', 'MY', 'Selangor', NULL, '123456', 'shah alam', 'Saving', '28/02/24 10:37:17 AM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_customers`
--
ALTER TABLE `bank_customers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `bank_staff`
--
ALTER TABLE `bank_staff`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `beneficiary_1011139`
--
ALTER TABLE `beneficiary_1011139`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011291`
--
ALTER TABLE `beneficiary_1011291`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011316`
--
ALTER TABLE `beneficiary_1011316`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011382`
--
ALTER TABLE `beneficiary_1011382`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011390`
--
ALTER TABLE `beneficiary_1011390`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011549`
--
ALTER TABLE `beneficiary_1011549`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011610`
--
ALTER TABLE `beneficiary_1011610`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011798`
--
ALTER TABLE `beneficiary_1011798`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011897`
--
ALTER TABLE `beneficiary_1011897`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011905`
--
ALTER TABLE `beneficiary_1011905`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011958`
--
ALTER TABLE `beneficiary_1011958`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011139`
--
ALTER TABLE `passbook_1011139`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011291`
--
ALTER TABLE `passbook_1011291`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011316`
--
ALTER TABLE `passbook_1011316`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011382`
--
ALTER TABLE `passbook_1011382`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011390`
--
ALTER TABLE `passbook_1011390`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011549`
--
ALTER TABLE `passbook_1011549`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011610`
--
ALTER TABLE `passbook_1011610`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011798`
--
ALTER TABLE `passbook_1011798`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011897`
--
ALTER TABLE `passbook_1011897`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011905`
--
ALTER TABLE `passbook_1011905`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011958`
--
ALTER TABLE `passbook_1011958`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_accounts`
--
ALTER TABLE `pending_accounts`
  ADD PRIMARY KEY (`Application_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_customers`
--
ALTER TABLE `bank_customers`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `bank_staff`
--
ALTER TABLE `bank_staff`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `beneficiary_1011139`
--
ALTER TABLE `beneficiary_1011139`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beneficiary_1011291`
--
ALTER TABLE `beneficiary_1011291`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_1011316`
--
ALTER TABLE `beneficiary_1011316`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_1011382`
--
ALTER TABLE `beneficiary_1011382`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_1011390`
--
ALTER TABLE `beneficiary_1011390`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_1011549`
--
ALTER TABLE `beneficiary_1011549`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_1011610`
--
ALTER TABLE `beneficiary_1011610`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_1011798`
--
ALTER TABLE `beneficiary_1011798`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_1011897`
--
ALTER TABLE `beneficiary_1011897`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_1011905`
--
ALTER TABLE `beneficiary_1011905`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_1011958`
--
ALTER TABLE `beneficiary_1011958`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passbook_1011139`
--
ALTER TABLE `passbook_1011139`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook_1011291`
--
ALTER TABLE `passbook_1011291`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook_1011316`
--
ALTER TABLE `passbook_1011316`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook_1011382`
--
ALTER TABLE `passbook_1011382`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook_1011390`
--
ALTER TABLE `passbook_1011390`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook_1011549`
--
ALTER TABLE `passbook_1011549`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook_1011610`
--
ALTER TABLE `passbook_1011610`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook_1011798`
--
ALTER TABLE `passbook_1011798`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook_1011897`
--
ALTER TABLE `passbook_1011897`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook_1011905`
--
ALTER TABLE `passbook_1011905`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook_1011958`
--
ALTER TABLE `passbook_1011958`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"shop_db\",\"table\":\"cart\"},{\"db\":\"shop_db\",\"table\":\"user\"},{\"db\":\"shop_db\",\"table\":\"product\"},{\"db\":\"shop_db\",\"table\":\"order\"},{\"db\":\"shop_db\",\"table\":\"wishlist\"},{\"db\":\"obsweb\",\"table\":\"pending_accounts\"},{\"db\":\"obsweb\",\"table\":\"bank_customers\"},{\"db\":\"obsweb\",\"table\":\"passbook_1011139\"},{\"db\":\"obsweb\",\"table\":\"beneficiary_1011139\"},{\"db\":\"shop_db\",\"table\":\"message\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'shop_db', 'user', '{\"sorted_col\":\"`user`.`UserType` ASC\"}', '2024-02-25 09:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-02-28 08:45:47', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Dumping data for table `pma__users`
--

INSERT INTO `pma__users` (`username`, `usergroup`) VALUES
('', ''),
('Any', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `shop_db`
--
CREATE DATABASE IF NOT EXISTS `shop_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop_db`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(255) NOT NULL,
  `ProductID` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ID` int(255) NOT NULL,
  `UserID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `ID` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `street` int(255) NOT NULL,
  `city` int(255) NOT NULL,
  `TotalProduct` int(255) NOT NULL,
  `TotalPrice` int(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `PinCode` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`ID`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `TotalProduct`, `TotalPrice`, `state`, `country`, `PinCode`) VALUES
(0, 'Amirah', '0123456789', 'nuramirahsyahirah02@gmail.com', 'cash on delivery', 'taman sri orkid', 0, 0, 0, 36, 'selangor', 'malaysia', 40460),
(0, 'Amirah', '0123456789', 'nuramirahsyahirah02@gmail.com', 'cash on delivery', 'taman sri orkid', 0, 0, 0, 36, 'selangor', 'malaysia', 40460);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `name`, `price`, `detail`, `image`) VALUES
(1, 'kuih bahulu', 12, '', 'bahulu.png'),
(5, 'biskut choco', 12, '', 'biskut choco.png'),
(6, 'biskut semperit', 12, '', 'biskut semperit.png'),
(7, 'biskut tart', 12, '', 'biskut tart.png'),
(8, 'kuih almond london', 12, '', 'kuih almond.png'),
(9, 'kuih kacang', 12, '', 'kuih kacang.png'),
(10, 'kuih nestum', 12, '', 'kuih nestum.png'),
(11, 'kuih ros', 13, '', 'kuih ros.png'),
(12, 'kuih semperit', 13, '', 'kuih semperit.png'),
(13, 'tart nenas', 14, '', 'tart nenas.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UserType` varchar(255) NOT NULL DEFAULT 'user',
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Email`, `Password`, `UserType`, `Image`) VALUES
(4, 'Amirah@gmail.com', 'amirah@gmail.com', '12345', 'user', ''),
(5, 'Admin', 'admin@gmail.com', '12345', 'admin', ''),
(6, 'Afrina', 'Afrina@gmail.com', '12345', 'user', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `ID` int(255) NOT NULL,
  `UserID` int(255) NOT NULL,
  `ProductID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Price` int(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
