Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FE147B68
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RuRJRaAQ182eNGh1VDeSLmL1NMsDEA8sAYHTdIraCc0=; b=KHWTzbDqE58THA
	Sn+aveVhV7YJ7DBRAoGvb3KMZ/85g6Aze+mPH82FjkDOn93yfKZfPpbHA4Nkic9DxpZB+Hm+2chDv
	liqCjnKfvvbipw4kLeM84R9ykVt22M7QgD0e6Ag/dVEJCy6gdk/KO2i8h1C0cp7qx1tJJYbEHl+eA
	oa+huvDhynUg0S4GgJeCkh3r5rh66SlN5MHGGLJc14Duw2mLPUEgdZN4cvUZETKqb9wazxl7Ued1Z
	SOHQUnzkLSoGUhzyzTMXMJBIof8ELkZOGKZ3cNb2D7E7ZewNkpC5y6ZiLG3A2K/jdxnET70MRTSic
	FibXTWK4rq3zJ4/8XGcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFd-0001LD-G4; Mon, 17 Jun 2019 07:40:25 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFY-0001Il-Hi
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id b7so3729020pls.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EY4L8aBLjdDyyMI/+sofXzbilApW2NdShwn+5L8ovc4=;
 b=TZ8eRdY8IVRAObCD9C7kmgOEt+0IlWx6HS3hbX0XQPY/YYumnaijtmiy/td+rDYqx3
 bfxTOv57rTBkp34jutKCxCmAcv22QnL0q4uYygmGzR6SXmlEaxKYdgthYb+RHDm1HMEI
 VomPIWXEbBYbplo4a3671u1IC2tgEYgl4rx+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EY4L8aBLjdDyyMI/+sofXzbilApW2NdShwn+5L8ovc4=;
 b=N29nfXTqMMQYUrTSFH7waRHKAJg8rqCgvNO++KESxmYdJZVHfPAPCWWBqoZ4nw/yqd
 DC6v7WRloAuCS1QpVQFm7fffHzxirBg6c8xNhCpMSE+uCP7I2ilcIB12iiUXkedoePyq
 n3tvouaxnQa0S+Hf9u1FPP5/09iFfDBrnFliLh+rKVaD8ek/li3x+PYUOwtXwKo93a0H
 4ztbVfigYq3bDaOyIzQnEBLti2D2u3Deue5tWrQ7rl0NMNgpKIqU6eJyd8Fu1HbUWc2z
 /ztS8m6AA/we7ReydDnCKSSFUELy/1vPDla+/M1pRg5OfSu6A5dtVFlzSjYhNq0sdth3
 /2Bw==
X-Gm-Message-State: APjAAAXcMaBCjZ1VFZBCcmTCCajlsPYfw6QCCZk4otSLOBrCTsnYnFer
 fpcJp9OpGZk01JDUHhsQPonIHQ==
X-Google-Smtp-Source: APXvYqxFt2qzN+Ti60l46EZj5cT91sWTJInvXPS8j0Xs0WiyIeOwuun25fah2v2HydxngGygl2JB2A==
X-Received: by 2002:a17:902:29a7:: with SMTP id
 h36mr55288152plb.158.1560757220039; 
 Mon, 17 Jun 2019 00:40:20 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 72/99] ram: rk3399: Add IO settings
Date: Mon, 17 Jun 2019 13:02:25 +0530
Message-Id: <20190617073252.27810-73-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004020_630264_5CC7A875 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add IO settings for dram ctl and phy.

IO settings are useful for configuring ctl, phy odt, vref,
mr5, mode select and other needed input output operations
for lpddr4 or any other dramtype sdram.

Right now, this patch added IO setting for all supported
sdram frequencies.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 104 ++++++++++++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d1b3aeef47..4de5a208f5 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -80,6 +80,110 @@ struct rockchip_dmc_plat {
 	struct regmap *map;
 };
 
+struct io_setting {
+	u32 mhz;
+	u32 mr5;
+	/* dram side */
+	u32 dq_odt;
+	u32 ca_odt;
+	u32 pdds;
+	u32 dq_vref;
+	u32 ca_vref;
+	/* phy side */
+	u32 rd_odt;
+	u32 wr_dq_drv;
+	u32 wr_ca_drv;
+	u32 wr_ckcs_drv;
+	u32 rd_odt_en;
+	u32 rd_vref;
+} lpddr4_io_setting[] = {
+	{
+		50 * MHz,
+		0,
+		/* dram side */
+		0,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_40,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en;*/
+		41,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		600 * MHz,
+		0,
+		/* dram side */
+		1,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en; */
+		32,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		800 * MHz,
+		0,
+		/* dram side */
+		1,	/* dq_odt; */
+		0,	/* ca_odt; */
+		1,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_40,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		1,	/* rd_odt_en; */
+		17,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		933 * MHz,
+		0,
+		/* dram side */
+		3,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x59,	/* dq_vref; 32% */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en; */
+		32,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		1066 * MHz,
+		0,
+		/* dram side */
+		6,	/* dq_odt; */
+		0,	/* ca_odt; */
+		1,	/* pdds; */
+		0x10,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_40,	/* rd_odt; */
+		PHY_DRV_ODT_60,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		1,	/* rd_odt_en; */
+		17,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+};
+
 static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
 {
 	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
