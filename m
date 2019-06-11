Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F963D002
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pfamber9IT1nQL2VYVX+Eqt+ZshdzEbSlNuZU432brU=; b=sEXV4Dy9+mUKqQ
	HSNslut3MLbZd6sUVMu8zkRDhvtMSO3AQ47/fdz8FGbnBt68T90kX4XE0PILVRtg1ZYz07F20Kp77
	M9BQGoO8xXu/d5E9peMhvv1ODljhQL1cQxSBMLveVY8xJvXGcracLwz2p3DV9rBq85q6BK9PlNOrz
	QjzSfNj71cI+jMm4vXiFMm8ixYpkx7bLktypCyKFRPKuEFuudoscFnxjk4Du66Rqm/OroCBchlCmL
	aXQtY7OV9Vq2fnQ/8hhXbYXYeuLEG/lPq082Pc/rsnx+aXju4GWamGTr2/4UQumEyAhX2i+mb0GH8
	gyqVhqVvVYr+Zsfu1AiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiDn-0000zR-Tl; Tue, 11 Jun 2019 14:58:00 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiDP-0000gm-3Z
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:57:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id d30so7113209pgm.7
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8+JP0INzqg+ea+/5UHLEH3B7og17tnRnO3V2nQVLGMY=;
 b=EE3CBxFUAxjbr/dk1KjHUYuGZKDm8NjdHWSntO5ZyHBX9DGD5mrXPELwgXTbO/3EV/
 f+1F/aJl3yaGz/S6S45auv3UTUc3AM8PdoE3meRZTogZkHj57tpyxdhxwGGaKaPs6jDY
 +TEYD3qH6NgtBogZ2nNoRTiG34duP1PQEJhKg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8+JP0INzqg+ea+/5UHLEH3B7og17tnRnO3V2nQVLGMY=;
 b=EBAKpsy7xeFO0sQJpmRGlRN7o0HPKJLIq0O4WZGOu7X+a9592Us4SLudj9ADaBtKVj
 4JQpRvWoxjqIqRuXfy2uxstrDU46t2E/4Vsh1ptnvMnjuSt9WKjf9P8PbsMXeFdUgiSf
 +1u5+jsBbwCCVrcb0zGbu3OzG2tOxMi7jbmpuIKpZuSPtiHRDOKY+W20/Z5vLzrsLXGU
 o76IIpsQ3sTHWUj+KQYSc5XD3TUMYEXR0MJfaZq+ni0CTK6JJrFZPnB9LKnU8RE0PIWP
 xTtulqMLanK8zL9uyz18pj2Recqo+B4SOwFhJgx+J8xuHH2YMgzEyrp4VLiSWKKsxn9r
 cRVw==
X-Gm-Message-State: APjAAAVlHPOjIzQ+lu+Mk5ayIbwcnxK/zMBiAUCiAEjXZn9WeOAf6B8H
 A0WpLNLmfJ8v6vcRwrnQlYkbYg==
X-Google-Smtp-Source: APXvYqzCKTZdcf2K3/MwopN2qhR7lr6XVHcUdyL1QVnARE8O353aJQpW8ThQGCRsjfd8OQrfVAaCEQ==
X-Received: by 2002:a17:90a:4814:: with SMTP id
 a20mr27930090pjh.62.1560265054458; 
 Tue, 11 Jun 2019 07:57:34 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.57.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:57:34 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 87/92] ram: rk3399: Set lpddr4 MR3
Date: Tue, 11 Jun 2019 20:21:30 +0530
Message-Id: <20190611145135.21399-88-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075735_325616_A818A4BC 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
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
index 2c02c51fdf..f1fb16c130 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1949,6 +1949,53 @@ static void set_lpddr4_ca_odt(const struct chan_info *chan,
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
@@ -2197,6 +2244,7 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 	ctl = lpddr4_get_ctl(timings, phy);
 	set_lpddr4_dq_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
 	set_lpddr4_ca_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
+	set_lpddr4_MR3(&dram->chan[channel], timings, ctl, true, mr5);
 
 	/*
 	 * if phy_sw_master_mode_X not bypass mode,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
