Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBE51770A
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 13:30:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlftOp0dJKbNHXPapBgpjegTFuYJK4YmLJUrzwIbNH8=; b=oDb3DD3H9ZsWPJ
	KTd6fIx6EASEFT621JmM/UWTP1M06BqM/DJlG1rjsQe9qTmfhexvscTb65OkOKgcmH9juBfrmyemh
	jP3Em4mKoQTWeEN9XZZXcsYs8YpMXzGk9HX6awnY50O9bDsfDLi44JL4geLJ7NNm9TTWjuU1KqtKQ
	DvmEOC6v1cPXYSAPclg7SSNx3Vbk+8wmvEML6Xsr/O9j947bKlYZh027LzvHlnvkOirmXej9Bf7DL
	lliH12RtQYSA5MhnXJZc5tFh/P4gOLL5t9Qf4/ZpqtyMOKBxFIeCJ+N00RPofou7g75yy6vbeI8/I
	cAgeB1FCeConx5rxMYCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKm5-0007qH-T9; Wed, 08 May 2019 11:30:13 +0000
Received: from mail-eopbgr800048.outbound.protection.outlook.com
 ([40.107.80.48] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKlM-0006Ab-KZ; Wed, 08 May 2019 11:29:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kj953YF77LM2a2dlESbeNeZmoXGMTjr2NXsCZOuqlCs=;
 b=WJZTSX1adtoqETj2TRceeLRWIxGQHvR1dID/kkYqIH0ExRMXx3PLDqNgFViju8AN0Sz4+kTjFvxDA6O1mxZkwUmRmezZRNZAXeQ+vpJItNYiEeDHKz8yRyy/Sh9wqu8SJNX7ewmBgovN1EDi11UgAewByNzm7zb+uYfUd6bPxPY=
Received: from CY1PR03CA0035.namprd03.prod.outlook.com (2603:10b6:600::45) by
 BY2PR03MB555.namprd03.prod.outlook.com (2a01:111:e400:2c37::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.10; Wed, 8 May
 2019 11:29:22 +0000
Received: from BL2NAM02FT016.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::205) by CY1PR03CA0035.outlook.office365.com
 (2603:10b6:600::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.10 via Frontend
 Transport; Wed, 8 May 2019 11:29:21 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.57)
 smtp.mailfrom=analog.com; lists.freedesktop.org; dkim=none (message not
 signed) header.d=none;lists.freedesktop.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT016.mail.protection.outlook.com (10.152.77.171) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Wed, 8 May 2019 11:29:21 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x48BTLLf016976
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Wed, 8 May 2019 04:29:21 -0700
Received: from saturn.analog.com (10.50.1.244) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server id 14.3.408.0; Wed, 8 May 2019
 07:29:20 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linuxppc-dev@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <linux-ide@vger.kernel.org>, <linux-clk@vger.kernel.org>,
 <linux-rpi-kernel@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, 
 <linux-pm@vger.kernel.org>, <linux-gpio@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <linux-omap@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
 <devel@driverdev.osuosl.org>, <linux-usb@vger.kernel.org>,
 <kvm@vger.kernel.org>, <linux-fbdev@vger.kernel.org>,
 <linux-mtd@lists.infradead.org>, <cgroups@vger.kernel.org>,
 <linux-mm@kvack.org>, <linux-security-module@vger.kernel.org>,
 <linux-integrity@vger.kernel.org>, <alsa-devel@alsa-project.org>
Subject: [PATCH 01/16] lib: fix match_string() helper on -1 array size
Date: Wed, 8 May 2019 14:28:26 +0300
Message-ID: <20190508112842.11654-2-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508112842.11654-1-alexandru.ardelean@analog.com>
References: <20190508112842.11654-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(376002)(136003)(346002)(396003)(39860400002)(2980300002)(189003)(199004)(316002)(50466002)(110136005)(106002)(76176011)(36756003)(70206006)(70586007)(86362001)(7696005)(2201001)(14444005)(51416003)(478600001)(7416002)(47776003)(5660300002)(54906003)(2906002)(48376002)(2441003)(16586007)(186003)(446003)(1076003)(77096007)(26005)(356004)(44832011)(486006)(11346002)(126002)(476003)(2616005)(8676002)(107886003)(50226002)(246002)(4326008)(8936002)(53416004)(336012)(426003)(305945005)(7636002)(921003)(83996005)(1121003)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR03MB555; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 70d6917f-f215-4387-ffab-08d6d3a86a83
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:BY2PR03MB555; 
X-MS-TrafficTypeDiagnostic: BY2PR03MB555:
X-Microsoft-Antispam-PRVS: <BY2PR03MB55532426C65B1246DCD69A2F9320@BY2PR03MB555.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0031A0FFAF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: EkinRue+oHsKHGU9xDPLwqOdJf0rruOZsQl/MCUDoHLxNCdgn+nCd693zRNYU/ul1uHwi/NkPHY62bVRycjk68l9ukT0lp/PIvbvAeGJuTyMBkoJ3LpwJP8AA+6sLGnOa8vypJGw5A8ov1fhv+lnNuk1SC4UW2SeilXkocHeKVTMVkRDO7wzTR6RAbvOq3Phku6T4Mqk2uNO2cTYTiWtoVqA5zyZilUa02oDdwvX2fN0a6JKWMc78cXM7mRR6ztmm/mvcHmERSY8EOpP5AiLIlza+si/G6jqjYxnnCbUx4RESiHtbIqq5bHx5HK13JjNtN5Ds4dH99JuuG6yIO7bb3t3mX15z/334BxveeoKGCgniaZZ1TMVBIT/ECNdU5U8sORBD+6hB+zyeFXFq3pz2/N8I/LejN9R3O2T8knNZfU=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2019 11:29:21.3354 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 70d6917f-f215-4387-ffab-08d6d3a86a83
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR03MB555
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_042929_171890_CF7F05B7 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The documentation the `_match_string()` helper mentions that `n`
should be:
 * @n: number of strings in the array or -1 for NULL terminated arrays

The behavior of the function is different, in the sense that it exits on
the first NULL element in the array, regardless of whether `n` is -1 or a
positive number.

This patch changes the behavior, to exit the loop when a NULL element is
found and n == -1. Essentially, this aligns the behavior with the
doc-string.

There are currently many users of `match_string()`, and so, in order to go
through them, the next patches in the series will focus on doing some
cosmetic changes, which are aimed at grouping the users of
`match_string()`.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 lib/string.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/lib/string.c b/lib/string.c
index 3ab861c1a857..76edb7bf76cb 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -648,8 +648,11 @@ int match_string(const char * const *array, size_t n, const char *string)
 
 	for (index = 0; index < n; index++) {
 		item = array[index];
-		if (!item)
+		if (!item) {
+			if (n != (size_t)-1)
+				continue;
 			break;
+		}
 		if (!strcmp(item, string))
 			return index;
 	}
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
