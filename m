Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE31C1DE2DC
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 11:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3t2zoi4b8uFv2vTDbVeTuQlXCZXFYbg7S2Ct0SvMV9M=; b=XpYRKHBf17F+jx
	j1I8drc+YGmPRYeo0S4ZgQ5VbMjEgrLCKE9x+rFnCAwsgz6biqaXwHj6moEinHykWef8EdORJ39PT
	x8wsP6mHWAdRUis/Wn8ud6/M9TzSABPxQ04mjb9TTbDi6BKeN9lBidm5T7giP8UiRbFqww+2pZspu
	JvOEaY1WzxZOQahT3dZ238T/vg+aN8iEo1wkESWJ7g1uJsGxYSq/PsQVdnMxxyXfYpYemPt6DQYYo
	0lk6d9L/aMM0R2taDlZOFeqsfnoxvQIEMkMwlTU4KuK7mmn0krKggcWNvUL6WPZfu/NwHY04Kh6J0
	UiCu1WoZy3TM9RKv+tFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc3t2-0003EX-Ms; Fri, 22 May 2020 09:22:40 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc3sy-0003D3-PC; Fri, 22 May 2020 09:22:38 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04M8Ycah015231; Fri, 22 May 2020 04:36:16 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 312a17dtf8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 May 2020 04:36:16 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 04M8aEdB040277
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Fri, 22 May 2020 04:36:14 -0400
Received: from SCSQCASHYB7.ad.analog.com (10.77.17.133) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 22 May 2020 01:36:13 -0700
Received: from SCSQMBX10.ad.analog.com (10.77.17.5) by
 SCSQCASHYB7.ad.analog.com (10.77.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 22 May 2020 01:36:12 -0700
Received: from zeus.spd.analog.com (10.64.82.11) by SCSQMBX10.ad.analog.com
 (10.77.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Fri, 22 May 2020 01:36:12 -0700
Received: from saturn.ad.analog.com ([10.48.65.112])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04M8ZhUQ005306;
 Fri, 22 May 2020 04:36:03 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-input@vger.kernel.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-samsung-soc@vger.kernel.org>,
 <linux-amlogic@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <linux-pm@vger.kernel.org>,
 <platform-driver-x86@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH 3/5] iio: remove left-over comments about parent assignment
Date: Fri, 22 May 2020 11:22:06 +0300
Message-ID: <20200522082208.383631-3-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522082208.383631-1-alexandru.ardelean@analog.com>
References: <20200522082208.383631-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-22_05:2020-05-21,
 2020-05-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0
 priorityscore=1501 mlxlogscore=796 spamscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 cotscore=-2147483648
 suspectscore=0 adultscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005220070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_022236_836744_08254DDC 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: milo.kim@ti.com, tomislav.denis@avl.com, dan@dlrobertson.com,
 heiko@sntech.de, linus.walleij@linaro.org, eajames@linux.ibm.com,
 bjorn.andersson@linaro.org, paul@crapouillou.net, lorenzo.bianconi83@gmail.com,
 srinivas.pandruvada@linux.intel.com, khilman@baylibre.com, krzk@kernel.org,
 wens@csie.org, kgene@kernel.org, slemieux.tyco@gmail.com, orsonzhai@gmail.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, alexandre.torgue@st.com,
 tduszyns@gmail.com, rjui@broadcom.com, s.hauer@pengutronix.de,
 jikos@kernel.org, vilhelm.gray@gmail.com, mripard@kernel.org, vz@mleia.com,
 hdegoede@redhat.com, ak@it-klinger.de, matthias.bgg@gmail.com,
 fabrice.gasnier@st.com, sbranden@broadcom.com, rmfrfs@gmail.com,
 syednwaris@gmail.com, dmitry.torokhov@gmail.com, coproscefalo@gmail.com,
 agross@kernel.org, songqiang1304521@gmail.com, mcoquelin.stm32@gmail.com,
 zhang.lyra@gmail.com, baolin.wang7@gmail.com, ktsai@capellamicro.com,
 shawnguo@kernel.org, peda@axentia.se, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

These were obtained by doing a 'git diff | grep \/\*', in the previous diff
to find comments. These needed a bit more manual review, as the semantic
patch isn't great for catching these.

The result is:
 	/* Initialize Counter device and driver data */
 	/* Initialize IIO device */
 	/* Establish that the iio_dev is a child of the spi device */
 	/* Estabilish that the iio_dev is a child of the spi device */
 	/* Initiate the Industrial I/O device */
 	/* Establish that the iio_dev is a child of the device */
-	/* establish that the iio_dev is a child of the i2c device */
-	/* establish that the iio_dev is a child of the i2c device */
 	/* This is only used for removal purposes */
 	/* setup the industrialio driver allocated elements */
 	/* variant specific configuration */
 	/* Setup for userspace synchronous on demand sampling. */
 	st->readback_delay_us += 5; /* Add tWAIT */
-	/* Establish that the iio_dev is a child of the i2c device */
 	/* Establish that the iio_dev is a child of the i2c device */

Out of which, 4 are really left-over comments about parent assignment.
3 of them are removed by the semantic patch, as the comment removed (by
spatch) would be for an empty line.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/iio/adc/ad7476.c         | 1 -
 drivers/iio/adc/ad7887.c         | 1 -
 drivers/iio/dac/ad5446.c         | 1 -
 drivers/staging/iio/cdc/ad7746.c | 1 -
 4 files changed, 4 deletions(-)

diff --git a/drivers/iio/adc/ad7476.c b/drivers/iio/adc/ad7476.c
index e2a69dd6a47e..6286e230f55b 100644
--- a/drivers/iio/adc/ad7476.c
+++ b/drivers/iio/adc/ad7476.c
@@ -300,7 +300,6 @@ static int ad7476_probe(struct spi_device *spi)
 
 	st->spi = spi;
 
-	/* Establish that the iio_dev is a child of the spi device */
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/iio/adc/ad7887.c b/drivers/iio/adc/ad7887.c
index ca4c98401ebc..0f93f5c8965d 100644
--- a/drivers/iio/adc/ad7887.c
+++ b/drivers/iio/adc/ad7887.c
@@ -264,7 +264,6 @@ static int ad7887_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, indio_dev);
 	st->spi = spi;
 
-	/* Estabilish that the iio_dev is a child of the spi device */
 	indio_dev->dev.of_node = spi->dev.of_node;
 	indio_dev->name = spi_get_device_id(spi)->name;
 	indio_dev->info = &ad7887_info;
diff --git a/drivers/iio/dac/ad5446.c b/drivers/iio/dac/ad5446.c
index e01ba90dc106..5931bd630c4e 100644
--- a/drivers/iio/dac/ad5446.c
+++ b/drivers/iio/dac/ad5446.c
@@ -250,7 +250,6 @@ static int ad5446_probe(struct device *dev, const char *name,
 	st->reg = reg;
 	st->dev = dev;
 
-	/* Establish that the iio_dev is a child of the device */
 	indio_dev->name = name;
 	indio_dev->info = &ad5446_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index bd9803c7c5b6..dfd71e99e872 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -693,7 +693,6 @@ static int ad7746_probe(struct i2c_client *client,
 	chip->client = client;
 	chip->capdac_set = -1;
 
-	/* Establish that the iio_dev is a child of the i2c device */
 	indio_dev->name = id->name;
 	indio_dev->info = &ad7746_info;
 	indio_dev->channels = ad7746_channels;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
