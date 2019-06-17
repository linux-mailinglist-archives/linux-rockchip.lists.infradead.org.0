Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD2547B7C
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLxYTtGJklK18/JhXhb8JFm5JFVkEhY/xR65bIGHP0k=; b=PUg5bsQd9RKUWL
	FeGzyX5G8sxLoqriP9UscvSZ8vQnSaUZn2DfiuarloZY3d5+fFQc/EEp/gL2igYguusdSkX8S8M1g
	qVGVH8WnW4iXTSTjcWb5OSHhCW0WpD7n2YgDQ4kneTW1xqxVhZ+fg4csYa9XVFefuQ/YlNhEgYuNs
	ApkbqKNtzj2WZcmJuibn7o3N3z4bq8tAZTIe4wMWd7QsgPSqSBB7wc3WIfIRKBpRORDpFIv0T6Mlm
	eW+G1b/L2e2ctLPkr5mEo4NRfySh2XHua9QQgQRXX73n72wCSCBEZ535Aj4bjS2hqTCsxBkodAw1W
	6qaM1RHYthr7oWKDeR2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGi-0002BL-5C; Mon, 17 Jun 2019 07:41:32 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGc-00027r-S1
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:28 +0000
Received: by mail-pg1-x541.google.com with SMTP id f21so5321038pgi.3
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0zklRZmJU29hi8WTA003fEZcsogeuBq8SIEVTjaj8VU=;
 b=g9fAR+8InXsy6S7J7pWn+Z9J+LqRE7z2BeEvUsX85fRjsxHCxZl+5m0KRzbcj1zfuQ
 X1vJ3pvnzUMT6PzYvYv1r1zIOiZI6E62DEXnhlKM6WWxASN76L/8fbRJnK+XbXr+bTp2
 FWasq4cztpWGd15EJaPCIJ4Sd+Bf0Ppt3WjY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0zklRZmJU29hi8WTA003fEZcsogeuBq8SIEVTjaj8VU=;
 b=qaJua3uLQcVJn7bs+5OMeVNh+dVw64POoKJhtIH9KITL8ivAV5n5VCPPNe/h1kuMv2
 rXO/7/ZK5zbN/s+Xk/6xmIwaOQFRQAmsc1+9In4ioVK/gKHmTPsBN8sWn5RXxHtRB4U7
 6dFp5VL4yLGQgdN2g3SNihmHpES2jyk92IiFch+l3PreJpQ6/edd7IEGF4DZLcncFf5n
 xNJoVUKWGTqV8Km/I3euA8nnTZaYYYUbeHccx+J88wIy4gDaTSN/JsS0xUgHBAZwnh3O
 MSVUP4Uhv6dGFbB1h7wnY0dG90vjayUY9v7qFmRzxkSAkYmuvZtc1VkrajS9OHY3yES1
 U6VA==
X-Gm-Message-State: APjAAAVrlluuHD48kzKLfJCCxRKajZryF/7UVF52pm2qUv8hzibITj9C
 zsQ77ncJN3+CT3ZtcjQAFQ6ruA==
X-Google-Smtp-Source: APXvYqzpHhMBComtNbdCYzx8v2+vhNaOo/L3vP9FtQO6IMz4V1livuBzsFVSWU6kD2XkatIG4U62kg==
X-Received: by 2002:aa7:972a:: with SMTP id k10mr79260846pfg.116.1560757286388; 
 Mon, 17 Jun 2019 00:41:26 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.41.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 92/99] ram: rk3399: Set lpddr4 MR3
Date: Mon, 17 Jun 2019 13:02:45 +0530
Message-Id: <20190617073252.27810-93-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004127_198108_4908B556 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Set MR3 based identified controller in lpddr4
as part of LPDDR set rate initialization phase.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 48 +++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index c5521e730d..61b886ba68 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1893,6 +1893,53 @@ static void set_lpddr4_ca_odt(const struct chan_info *chan,
 	}
 }
 
+static void set_lpddr4_MR3(const struct chan_info *chan,
+			   struct rk3399_sdram_params *params, u32 ctl,
+			   bool ctl_phy_reg, u32 mr5)
+{
+	u32 *denali_ctl = get_denali_ctl(chan, params, ctl_phy_reg);
+	u32 *denali_pi = get_denali_pi(chan, params, ctl_phy_reg);
+	struct io_setting *io;
+	u32 reg_value;
+
+	io = lpddr4_get_io_settings(params, mr5);
+
+	reg_value = ((io->pdds << 3) | 1);
+
+	switch (ctl) {
+	case 0:
+		clrsetbits_le32(&denali_ctl[138], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_ctl[152], 0xFFFF, reg_value);
+
+		clrsetbits_le32(&denali_pi[131], 0xFFFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[139], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_pi[146], 0xFFFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[154], 0xFFFF, reg_value);
+		break;
+	case 1:
+		clrsetbits_le32(&denali_ctl[138], 0xFFFF << 16,
+				reg_value << 16);
+		clrsetbits_le32(&denali_ctl[152], 0xFFFF << 16,
+				reg_value << 16);
+
+		clrsetbits_le32(&denali_pi[129], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_pi[136], 0xFFFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[144], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_pi[151], 0xFFFF << 16, reg_value << 16);
+		break;
+	case 2:
+	default:
+		clrsetbits_le32(&denali_ctl[139], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_ctl[153], 0xFFFF, reg_value);
+
+		clrsetbits_le32(&denali_pi[126], 0xFFFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[134], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_pi[141], 0xFFFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[149], 0xFFFF, reg_value);
+		break;
+	}
+}
+
 static void lpddr4_copy_phy(struct dram_info *dram,
 			    struct rk3399_sdram_params *params, u32 phy,
 			    struct rk3399_sdram_params *timings,
@@ -2141,6 +2188,7 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 	ctl = lpddr4_get_ctl(timings, phy);
 	set_lpddr4_dq_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
 	set_lpddr4_ca_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
+	set_lpddr4_MR3(&dram->chan[channel], timings, ctl, true, mr5);
 
 	/*
 	 * if phy_sw_master_mode_x not bypass mode,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
