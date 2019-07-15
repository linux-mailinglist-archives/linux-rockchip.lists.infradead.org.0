Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B0269AB6
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:21:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hH9eZct6fohL6Zgohs60QtiRNBJGcwvyvHYzdf+oIuk=; b=Z3F4mDKsGsVv8s
	3QtD4xzSfc5JQjNXYiHBY+lgaW6Oesjuxga858M6Cuee7MetSNWgK+tdT2rbGr/JoX63yCwiTju6Z
	Eg0RC7xWSIoBI6xrjPyBrJ+TX1cC98ZrM5R0BXM6RPPRH18QLqr2aI9PVE421eWvJXphx2Ukrg3ha
	018I4j3d1sPWI4ttK0tMjPso1YDSRnxclylmWX7TPvLUFhD7+h/qbJAqxqGgn+y/JlL4i7cu+NS+q
	f8zlHtkzDTsd5xk8uq2snGLdaBDbkH2ZQrd/yF9R4kCGqV+6BI/j4JtIQ+4FLh7pL37gZHxXayXha
	ethW/5MvLrvQhtp0gqgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5bi-00070k-FT; Mon, 15 Jul 2019 18:21:50 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5bd-0006wz-R8
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:21:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id i18so8100645pgl.11
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eYOvN0Xd3Hh0f6x0tsIZeUhFC5PjypbYAEBgDLIMbqc=;
 b=WWKux90hGiLf2f24dT2r576ekFl3AmeaN/btvS4RkxtSTsQJy1DciY/hT+ArbGjY99
 bZl7dPiXtaJNtfyLaynskog0HeCSMaaCs9zJCAhpuZHEqV4u3D+8vkOU89inKOUmTM9f
 1FjB1BNS8HH0Oi3Qar/7ycq8flENrxEYlE7Bs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eYOvN0Xd3Hh0f6x0tsIZeUhFC5PjypbYAEBgDLIMbqc=;
 b=BbFhJM5EClAjots7qGrSI1FcvrtJfzNXBEMyjjExUCRNE7Gpcz56GQZr/Ki12ZaELI
 QXynkQy5CT2PPX5LKCsn42XIg/n/FkVvGAFnaGr5+/ATCn4sZsgxwzlexO+k9PFC/dFo
 cKXhD8fFHZL27MqRSYNbhk2EBf5LltI7nxRVEqXz3rA4JiqYi54jmFKPItZDesX28P0s
 sISuRIVIgyUs/9Rc7SRrCOLRvYdg3fbQJwKruCqc4wN28YYVv8r292C2pUoxN96RmgX3
 0jUCQ2Vzfh9oUtlS1zVFeJWtYzbfsAWTq7RE05vkgHoblfNQQ+LASixOKRkrh8TFyA2r
 VBKA==
X-Gm-Message-State: APjAAAVudRx9+ibdR6m3CNCX4aRkFspi74w8rH+C5/1bBYBPELd/ZQ/X
 le2jMt8yWwHSIzI2051h8adyZA==
X-Google-Smtp-Source: APXvYqzHxUtr1R0Sy1toGIKaZ+jO1WhTxb7oLN2Q3POWYvNH8RM4+KuPzp5qCv8zq1d6NIoVvsImBg==
X-Received: by 2002:a65:51c1:: with SMTP id i1mr6888627pgq.417.1563214905009; 
 Mon, 15 Jul 2019 11:21:45 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:21:44 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 07/15] ram: rk3399:
 s/ca_tsel_wr_select_n/tsel_wr_select_ca_n
Date: Mon, 15 Jul 2019 23:51:02 +0530
Message-Id: <20190715182110.21336-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112145_920598_7E16B2B3 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Rename ca_tsel_wr_select_n to tsel_wr_select_ca_n based
on the bsp code.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 3ec32bdbc0..bdb46a0128 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -160,7 +160,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_wr_select_dq_p, tsel_rd_select_p;
-	u32 ca_tsel_wr_select_p, ca_tsel_wr_select_n;
+	u32 ca_tsel_wr_select_p, tsel_wr_select_ca_n;
 	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
 	u32 reg_value;
 
@@ -172,7 +172,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_40;
-		ca_tsel_wr_select_n = PHY_DRV_ODT_40;
+		tsel_wr_select_ca_n = PHY_DRV_ODT_40;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	} else if (params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
@@ -182,7 +182,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_n = PHY_DRV_ODT_48;
+		tsel_wr_select_ca_n = PHY_DRV_ODT_48;
 		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
@@ -192,7 +192,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_n = PHY_DRV_ODT_34_3;
+		tsel_wr_select_ca_n = PHY_DRV_ODT_34_3;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	}
 
@@ -228,7 +228,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[391], 0xffffff, reg_value);
 
 	/* phy_adr_tsel_select_ 8bits DENALI_PHY_544/672/800 offset_0 */
-	reg_value = ca_tsel_wr_select_n | (ca_tsel_wr_select_p << 0x4);
+	reg_value = tsel_wr_select_ca_n | (ca_tsel_wr_select_p << 0x4);
 	clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
