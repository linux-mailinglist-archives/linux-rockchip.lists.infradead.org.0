Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BF23D001
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=teHTUxlVHvGXjHgPiu0VP8ENCbjsA1LI5I9J7Yr0I7Y=; b=WnPJcO/doTEjCI
	d0628Jif2h/VIYF3JRlFC3ZMQf05JQJz4iK3M1P5hxqsRf9bn8ZOEXYiVttWA0cfAEk8kMEZWRUh/
	zBc14SfGbjf8E28uMH6JkPKo4+GqX0OcWGwrFVGdJGHrI68vhdvh/Morcrfdd045A0l6PzA9G01P1
	goEkKORP+oJVsUVm8nYMCommD227YCQxWA2jCSMjAijIejQpDYSYSAhXvs5vz+9WeOqFZI8xzkB2J
	nPi1XqUJE/KRuTwNkgTegzbJGgYu2RRQdWf4RB0Efgm1L9tvrNmPjdfjr6ZhpakLs6hgeSkwRNUOj
	ho15Y/HEdTpQLUBxm+Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiDk-0000xH-7G; Tue, 11 Jun 2019 14:57:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiDL-0000bn-14
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:57:32 +0000
Received: by mail-pf1-x443.google.com with SMTP id d126so7608769pfd.2
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qzOgM63ZXtgnBHMJkUfmyhq4zTJWFZFmUikkPYBSeZw=;
 b=Chvo+ClQBQFkUrkJrzyjL4ugLEnZHj48uUFfL78erEyE8/uECwrkiQM6OxxVfouI9h
 +SS30PzSVKiwphyoepJh/oVyQrTkdxHgHCfD+f1wHu0Vdsy53yHCNP/NdPyY7Xlt/Q8h
 7gzb2ngB/STp+ssUiwxFW/9poWO1cXkYvX0HQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qzOgM63ZXtgnBHMJkUfmyhq4zTJWFZFmUikkPYBSeZw=;
 b=gbbD+jXKGcZn6OBKaEaU5jhe4BnOAfULx5pZkXkH6p8xirRmjCywFalzh04tvBYJs2
 GdmngxCdeuCb+WTz4fTNRXiFClDKPSszooZCh8GEj8lk7qwtUPlQZs2rvBu8Ww/W0d8H
 aKlKLLvYaKDOtLHeuGZFGNVUOGp899oC9jDvP8pkZZtW1nFRKhIngffxAiflrUHd3Sen
 hbR+rAK29GahxgpE/bBwMT5egkSCjITY70CPdc5umAgWPZ/9yS4uwH6Plv7AyBBRVYfa
 KbUwz3J2X823S+QJlx0aECcj7iUhix7L2tBjsk8B7Kh2d0avO2QvI3XXKXcf4xA7MTq+
 XWkw==
X-Gm-Message-State: APjAAAXyFLFDZEffyXoc0yE8t9OUZKnUDrwdwVwabh1cb3bPLjcsjxiH
 KcuxQZj6+fxhtrJdydBJKQ5jew==
X-Google-Smtp-Source: APXvYqy6bM79iMYCFdEE5MBvKbiGRyON0vilFRtW8Exz0mY9IWrOl4sMVK+BKfy/QUY7scJKlOcmdw==
X-Received: by 2002:a17:90a:2244:: with SMTP id
 c62mr11234181pje.29.1560265050500; 
 Tue, 11 Jun 2019 07:57:30 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.57.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:57:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 86/92] ram: rk3399: Set lpddr4 ca odt
Date: Tue, 11 Jun 2019 20:21:29 +0530
Message-Id: <20190611145135.21399-87-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075731_229238_353CA23C 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Set CA ODT based identified controller in lpddr4
as part of LPDDR set rate initialization phase.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 49 +++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index fc9958de17..2c02c51fdf 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1901,6 +1901,54 @@ static void set_lpddr4_dq_odt(const struct chan_info *chan,
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
@@ -2148,6 +2196,7 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 
 	ctl = lpddr4_get_ctl(timings, phy);
 	set_lpddr4_dq_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
+	set_lpddr4_ca_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
 
 	/*
 	 * if phy_sw_master_mode_X not bypass mode,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
