Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D0E47B7B
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBq+mNdMaaGrEnZwFNTbISaHcmY5sebswSYft+kjxiA=; b=Rs+Qh510Sfq4ij
	MekHhlkY4DDYucUP5IfsNnsw3gMbD7hF60Z6QeNUPYgRG0thYEt6/1NOb40OdmhW2vHKiB+7+HGPL
	obJns2hzRlwZ5HrbD456vDmP34K4pGwaykSBcJn7hVQxRqRF0pnkahla+fOgwL7LfifSeDETtKMgr
	fIIPScyBEIh9d7kyP1g7oW5YSI260T8hgUV5F2eb/74CHyyRMkoBiDE7qXqk01jHyCP+fivkMUBjo
	bMW4dcw+l8DJXG5c1cFPGPiGvWf984ztg80Q7svBOcFMX01kkJEr6JVGeN2FUvqTR7j4dJt4RKYbP
	Ui13Y8r1VHVyUNAUAr0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGg-00029P-6a; Mon, 17 Jun 2019 07:41:30 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGZ-00025k-QN
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:25 +0000
Received: by mail-pl1-x641.google.com with SMTP id cl9so3723914plb.10
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u/TB85VEaFs2QbI7DRyda0G4olL7uWDeg8+9hDnais4=;
 b=CSFXUt+aQsg3bSwV/X1/CGBcjXf8KWEjA2vg+j7szkycit//bxa6R/oMYprmpkuyYL
 Mip/GxN2tNx8Mh7ihJaEwE7Bh8oY/cHqWm2KT6uS0AhuQS2OVefw58RVDFp77w2CISXO
 GgfjFOMWX8QuTstjqo9FsO3NshO4Bzf+dRX0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u/TB85VEaFs2QbI7DRyda0G4olL7uWDeg8+9hDnais4=;
 b=TioVF3wRBkvMiv+HETvLyVovrQpxqnf0UJOZoIwUyY1IV7nvizhMof3SwsoZH+kHrx
 RBSFL3B+fvsM8Fqo0yefJUNHpaI4OpzUOaM185rw7d7vxSJfenW19VSDHDdtDJx6kQpg
 lbc2hFDjyNmdQo8pnALHRi8S8tLdySICJAB4Cyl3PRTJ4g9/HbLWR59rnTv0qTXXkgb5
 msc1PwNJvnLB2Bp9cgCeoRm+YslidsTi7HCYsjHHWtuud5Feg/ggL0FrrC5Lb00h18iI
 shTf9hftaCJqd2oEz7aZ607snmTBpbGkDikav6o+6jdot1t/c/LPuhhRTtokb16kt1WN
 pBEw==
X-Gm-Message-State: APjAAAXMCg8OSosMjxaAV2ppXZzUqWonxcD1OGfp6UKyWKcvurphe6fv
 FjHAV4OvBHeLgZZnMu7pqshahA==
X-Google-Smtp-Source: APXvYqwP1/uXzyBz+N6t53iwQ/2phQQvlkIifKfoV6zs3WUJtmsp1612rTRqUj/s3ALgTIlFzWjKTA==
X-Received: by 2002:a17:902:b115:: with SMTP id
 q21mr45770174plr.36.1560757283200; 
 Mon, 17 Jun 2019 00:41:23 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.41.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 91/99] ram: rk3399: Set lpddr4 ca odt
Date: Mon, 17 Jun 2019 13:02:44 +0530
Message-Id: <20190617073252.27810-92-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004123_914221_39CDDA22 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Set CA ODT based identified controller in lpddr4
as part of LPDDR set rate initialization phase.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 49 +++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index ddda6f8ebd..c5521e730d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1845,6 +1845,54 @@ static void set_lpddr4_dq_odt(const struct chan_info *chan,
 	}
 }
 
+static void set_lpddr4_ca_odt(const struct chan_info *chan,
+			      struct rk3399_sdram_params *params, u32 ctl,
+			      bool en, bool ctl_phy_reg, u32 mr5)
+{
+	u32 *denali_ctl = get_denali_ctl(chan, params, ctl_phy_reg);
+	u32 *denali_pi = get_denali_pi(chan, params, ctl_phy_reg);
+	struct io_setting *io;
+	u32 reg_value;
+
+	if (!en)
+		return;
+
+	io = lpddr4_get_io_settings(params, mr5);
+
+	reg_value = io->ca_odt;
+
+	switch (ctl) {
+	case 0:
+		clrsetbits_le32(&denali_ctl[139], 0x7 << 28, reg_value << 28);
+		clrsetbits_le32(&denali_ctl[153], 0x7 << 28, reg_value << 28);
+
+		clrsetbits_le32(&denali_pi[132], 0x7 << 4, reg_value << 4);
+		clrsetbits_le32(&denali_pi[139], 0x7 << 20, reg_value << 20);
+		clrsetbits_le32(&denali_pi[147], 0x7 << 4, reg_value << 4);
+		clrsetbits_le32(&denali_pi[154], 0x7 << 20, reg_value << 20);
+		break;
+	case 1:
+		clrsetbits_le32(&denali_ctl[140], 0x7 << 4, reg_value << 4);
+		clrsetbits_le32(&denali_ctl[154], 0x7 << 4, reg_value << 4);
+
+		clrsetbits_le32(&denali_pi[129], 0x7 << 20, reg_value << 20);
+		clrsetbits_le32(&denali_pi[137], 0x7 << 4, reg_value << 4);
+		clrsetbits_le32(&denali_pi[144], 0x7 << 20, reg_value << 20);
+		clrsetbits_le32(&denali_pi[152], 0x7 << 4, reg_value << 4);
+		break;
+	case 2:
+	default:
+		clrsetbits_le32(&denali_ctl[140], 0x7 << 12, (reg_value << 12));
+		clrsetbits_le32(&denali_ctl[154], 0x7 << 12, (reg_value << 12));
+
+		clrsetbits_le32(&denali_pi[127], 0x7 << 4, reg_value << 4);
+		clrsetbits_le32(&denali_pi[134], 0x7 << 20, reg_value << 20);
+		clrsetbits_le32(&denali_pi[142], 0x7 << 4, reg_value << 4);
+		clrsetbits_le32(&denali_pi[149], 0x7 << 20, reg_value << 20);
+		break;
+	}
+}
+
 static void lpddr4_copy_phy(struct dram_info *dram,
 			    struct rk3399_sdram_params *params, u32 phy,
 			    struct rk3399_sdram_params *timings,
@@ -2092,6 +2140,7 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 
 	ctl = lpddr4_get_ctl(timings, phy);
 	set_lpddr4_dq_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
+	set_lpddr4_ca_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
 
 	/*
 	 * if phy_sw_master_mode_x not bypass mode,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
