Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D25902C077
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 09:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K25joxagQUR6hQR1nY02NrTkytRf346UHwuu2kbxuFY=; b=hCyFbpocjpXCV3
	7vKyJIVlyqrAcmDJucQ0IRuU7RGUTzHiLaSLOCliwVCe/rFTGmt3BL/qs6kNRuGNQV8xD4BOaeFMN
	WjFst7hieOPegBCh1/MUPzKBct+obporbaRMfvz7WehTi6Bg1RHH8ayZR0fbpmDnNIHfq88t8tJ7a
	6sFSOBecIa9k7idlgppr5WcGwtv2JkZCpj8NbQqm3hn4jQiPgjqk+NHYfTDKpmVaUdngvAkzlb3jN
	RoUAqIEjnWl/CgprHyDdVkCTnXqf8HB2zlps/aE7tE8Sf4fHbYsI8kDjdGHqZzzpK/8YCS03cB2pX
	ezK7fIVzLCbQxkCeMRbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWj9-0008C8-65; Tue, 28 May 2019 07:40:55 +0000
Received: from mail-eopbgr770077.outbound.protection.outlook.com
 ([40.107.77.77] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWiK-00063G-QW; Tue, 28 May 2019 07:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EVygfSY8hqy/DBUvsHRCgGvieeoiCENlb8QcgTW8Qa0=;
 b=ug3p+80+pta3QSOyYVopWCIPknnTa/9XApeIFW+44+SXRahs8pvbg98CvxDZWD2q7UoHIhgUD6Sn7ZbGyOWHdj4WAzkhg9cumlMLts6dyltoEMjlw9eglOAVG8lj96mIW2ArwyzQcb/gVfwCJxWUUom9Q8RHLT+KaOaucx79tQQ=
Received: from BN3PR03CA0110.namprd03.prod.outlook.com (2603:10b6:400:4::28)
 by BLUPR03MB552.namprd03.prod.outlook.com (2a01:111:e400:883::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.22; Tue, 28 May
 2019 07:39:58 +0000
Received: from SN1NAM02FT022.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by BN3PR03CA0110.outlook.office365.com
 (2603:10b6:400:4::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1943.16 via Frontend
 Transport; Tue, 28 May 2019 07:39:58 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.55)
 smtp.mailfrom=analog.com; lists.freedesktop.org; dkim=none (message not
 signed) header.d=none;lists.freedesktop.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 SN1NAM02FT022.mail.protection.outlook.com (10.152.72.148) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1922.16
 via Frontend Transport; Tue, 28 May 2019 07:39:57 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x4S7duOZ023275
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Tue, 28 May 2019 00:39:56 -0700
Received: from saturn.analog.com (10.50.1.244) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server id 14.3.408.0; Tue, 28 May 2019
 03:39:56 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linuxppc-dev@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <linux-ide@vger.kernel.org>, <linux-clk@vger.kernel.org>,
 <linux-rpi-kernel@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-pm@vger.kernel.org>,
 <linux-gpio@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <linux-omap@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>, <linux-wireless@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-pci@vger.kernel.org>,
 <linux-tegra@vger.kernel.org>, <devel@driverdev.osuosl.org>,
 <linux-usb@vger.kernel.org>, <kvm@vger.kernel.org>,
 <linux-fbdev@vger.kernel.org>, <linux-mtd@lists.infradead.org>,
 <cgroups@vger.kernel.org>, <linux-mm@kvack.org>,
 <linux-security-module@vger.kernel.org>,
 <linux-integrity@vger.kernel.org>, <alsa-devel@alsa-project.org>
Subject: [PATCH 3/3][V2] lib: re-introduce new match_string() helper/macro
Date: Tue, 28 May 2019 10:39:32 +0300
Message-ID: <20190528073932.25365-3-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528073932.25365-1-alexandru.ardelean@analog.com>
References: <20190508112842.11654-1-alexandru.ardelean@analog.com>
 <20190528073932.25365-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(136003)(39860400002)(346002)(396003)(376002)(2980300002)(199004)(189003)(126002)(2441003)(86362001)(44832011)(5660300002)(2201001)(478600001)(446003)(476003)(2616005)(53416004)(47776003)(316002)(11346002)(2870700001)(2906002)(6666004)(356004)(50226002)(51416003)(7696005)(7416002)(76176011)(48376002)(4326008)(305945005)(70586007)(70206006)(336012)(26005)(77096007)(186003)(1076003)(7636002)(246002)(486006)(426003)(7406005)(110136005)(54906003)(106002)(107886003)(50466002)(36756003)(8936002)(8676002)(921003)(83996005)(1121003)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR03MB552; H:nwd2mta1.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail10.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f7495c6-88de-4750-c0e9-08d6e33faf63
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709054)(1401327)(2017052603328);
 SRVR:BLUPR03MB552; 
X-MS-TrafficTypeDiagnostic: BLUPR03MB552:
X-Microsoft-Antispam-PRVS: <BLUPR03MB5526A3F85F374B6EF9329F1F91E0@BLUPR03MB552.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1443;
X-Forefront-PRVS: 00514A2FE6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: MswgKhZP9m+ZsGUEhWl3phwXCL8yuqzj7xcxpK+dGlJBf9m5zMl51gqC3LUtKdWQ8Os49FCltfeNbu6Phw/B8l5WNlH00oAhRzdjikewQHYUEmLqJ6/urfczkkAV7S6v3P1UMtUMTOYDySCPLD3RO66kjwZftNeRvVV3dsDqCax4qYOjNj2PWP5gkM5PjRZmJWiCQ5YjWYviSRnNrXmzdalwSZTQ416f6pMfl95WCkKeJFuhdayQMWJGsRNhTOHuxm5bGOp4NnJa6ZTV5K+ilvVE4Xb082rHyJdnAOFnjmjlMMgU1yiCJ2yKYrrmhTGSsWl7mABejle5Gq03Z59rpn0+AbER3kkbBxVnYXW8nX3mrHd8Gqzr89K0YpmuIcGMyscsEWrsfpd9tI6dbYg4W4+zRy2MwWGNPPr9JWXwDBM=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2019 07:39:57.3627 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f7495c6-88de-4750-c0e9-08d6e33faf63
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR03MB552
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_004005_871633_ABD26184 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: gregkh@linuxfoundation.org,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 heikki.krogerus@linux.intel.com, andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This change re-introduces `match_string()` as a macro that uses
ARRAY_SIZE() to compute the size of the array.

After this change, work can start on migrating subsystems to use this new
helper. Since the original helper is pretty used, migrating to this new one
will take a while, and will be reviewed by each subsystem.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 include/linux/string.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index 7149fcdf62df..34491b075449 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -198,6 +198,15 @@ static inline int strtobool(const char *s, bool *res)
 int __match_string(const char * const *array, size_t n, const char *string);
 int __sysfs_match_string(const char * const *array, size_t n, const char *s);
 
+/**
+ * match_string - matches given string in an array
+ * @_a: array of strings
+ * @_s: string to match with
+ *
+ * Helper for __match_string(). Calculates the size of @a automatically.
+ */
+#define match_string(_a, _s) __match_string(_a, ARRAY_SIZE(_a), _s)
+
 /**
  * sysfs_match_string - matches given string in an array
  * @_a: array of strings
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
