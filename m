Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B9169AB7
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDsAmsLLBpf63lVOh5QRI3Y+rqOII5QkMtvYE9a1uBs=; b=D1CFmemxZYheFs
	xNOP0PMPxlHnTGojXTgtdTvywW/a9+xfDDjOVf+4JCv3xFOfQVzReEVCSfDXkL4pnTeFlGZIfku3U
	F6BC4oYZGy7lF+r7j+KIuBB9I2gzWO5j1lc0kiemnOAbwVI/gh9MV8YKbUL6Ym1LijfSml0+FyoQa
	pvx03IGbKoZNXrjrA0fmTkzSMSuMkGdFU/mqYtUMRsVprFFDfgXjO0ENy/BHlaT97/aOvJDKCH/I+
	EVIykSN6WfA6ADIDD8EMcPph116E93dwQJzZyLNpEGYUAF5CVl1ZPVfpcWLBOFKMGzGtIxOOczS8T
	pVkEuiMheTBXgn1EEc0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5bl-00073O-WF; Mon, 15 Jul 2019 18:21:54 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5bh-00070J-0z
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:21:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id y15so7807074pfn.5
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bP5RUNOPzdBiXN4Wuu7IIKjZLRMU38B7qIBozOuu1g8=;
 b=bZMfoeuf5sba30If4+SZWgFLDW7XluxsElc+Y097WZt4krLE/bDfHKjR9hk1zmyU3W
 SAb92UuKJwLF+khdfApRvIQIoX4Mqjs/jtGE7AzV/xhKTbGuxrjcXQRcHz4WbfN3mG5h
 heZbDeQk3/W72toBHMmtyF9lqLSe2N0rW847g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bP5RUNOPzdBiXN4Wuu7IIKjZLRMU38B7qIBozOuu1g8=;
 b=GP5fpQ9Usih2MAvmLKeOHYHZQDEXS3ExJlXJ5OsMhOz8/GgTs7MAzusQTuQxhzz7pZ
 L4l4pfC16fGU7G2KCcchqAJLSJ+SmeYGhJHfJpcblo+I3ousCSuNmxsARV5TOrtCzVHb
 7MEyed9Jj2v5EDA4TlTgXhovveVCxKc4Cbl5DLGj5zilOXkpP88CTQEWt6NLNBCAY8ks
 N8c75mSoSECU8rAWqxUMqjz9jOmx468xID8100UcDClwLJjCQXyXurKk6t/bN6zCQhId
 au8h/zWOhDdEkCiWkvF9uaIMfbIevqmRgjDGc2d5prfHDcjm+GzeyZ+PZ87b89fgsDc0
 2cNw==
X-Gm-Message-State: APjAAAWO8EA38mgyfZnVA1Dwaydux87a1VVdozoDwmYMBtFhA/n9046t
 ePJayZisK18hT1Xyup3dBO3Aig==
X-Google-Smtp-Source: APXvYqyDGsE9i7HAdAC0HoIN4G517WUpxdBTnVuKhzQ3apbb2Y465vjr8Sv6CcyUfTlyec4aR/+Zeg==
X-Received: by 2002:a65:5c0a:: with SMTP id u10mr28580554pgr.410.1563214908423; 
 Mon, 15 Jul 2019 11:21:48 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:21:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 08/15] ram: rk3399:
 s/ca_tsel_wr_select_p/tsel_wr_select_ca_p
Date: Mon, 15 Jul 2019 23:51:03 +0530
Message-Id: <20190715182110.21336-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112149_093710_30FADA98 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Rename ca_tsel_wr_select_p to tsel_wr_select_ca_p based
on the bsp code.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index bdb46a0128..8a983f9bb1 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -160,14 +160,14 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_wr_select_dq_p, tsel_rd_select_p;
-	u32 ca_tsel_wr_select_p, tsel_wr_select_ca_n;
+	u32 tsel_wr_select_ca_p, tsel_wr_select_ca_n;
 	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
 	u32 reg_value;
 
 	if (params->base.dramtype == LPDDR4) {
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_40;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_40;
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
@@ -177,7 +177,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	} else if (params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_48;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_48;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
@@ -187,7 +187,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_34_3;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_34_3;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
@@ -228,7 +228,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[391], 0xffffff, reg_value);
 
 	/* phy_adr_tsel_select_ 8bits DENALI_PHY_544/672/800 offset_0 */
-	reg_value = tsel_wr_select_ca_n | (ca_tsel_wr_select_p << 0x4);
+	reg_value = tsel_wr_select_ca_n | (tsel_wr_select_ca_p << 0x4);
 	clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
