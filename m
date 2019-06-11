Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A843CFA7
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGavfiSJcowTYcCgum/lQV/utYqKLgMJc6l0JDrV2os=; b=Be9IpUcPad50KF
	c7ftXOQzVY7r3peFrUdOUKN4q4M6w7OXeFveYu98n7a39L3OR4Y2WMiznPN2v+ZMGoY4pT8puYB8P
	I6hYxeO0JLwtr6LKwrbF7WJJEnVQ4hmxiU9l23g87d2P5aRoPPISWWrLePcZGUF/rSyQaNkxEO4Rl
	Hurv7oiC/rvhwBzGYSSssiUnEawIpUTVdx8ryeXm003QVVwGv4NAIqcf6cMPmBGvM7KqU6uoKL7N0
	mmai9eKlv/WBxPkgwFoy9IqmQyhMMK3ZHa38lnzPYWSBjktSkniZejMuCKw6DGnahMyCKf4HcTVzG
	ajtjtq4dThEXGMMN2SRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAx-0005pb-0y; Tue, 11 Jun 2019 14:55:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAt-0005ni-5o
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id d126so7604215pfd.2
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=91d3Q/abSo/d7WjJEcuCr0VuZ8ECJ4wV6RZKeJL/eXg=;
 b=UPQW2/RrDeMFOu/8C9dG+thAPbIwkO9JX1q5gnwvdHCTQMaMIIAjSwI9FZDJMbid0D
 LOtwo6xZquGAIsdo+mqwSJdvQzsBy+15WZ/wSJxH+zQ1iAdxCa596Bg3PCGsdpbm5NCe
 J71swzyW5dxF6Qax6S7DlwTrSOYMikaFULpME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=91d3Q/abSo/d7WjJEcuCr0VuZ8ECJ4wV6RZKeJL/eXg=;
 b=BgYZGvlFIssKZ9uxQv1h/Kh+3KOpxklNhaIPRX1pZyAWZLBSmZuTDcxMp7qZgP4AY1
 5+NesXF7L30SDWU86ans+2FvPajTPTgiVxIXevC1F9mILeVukMMoqQlZ1h5H/8BR6+F1
 YcQ1V2pTszSljaOEID3VMZO+cB5DprLEz5OjeOYJgVAILW0InyTOW7gYB9ObVszk9MA1
 sAKlaMY9JDXJJBX4InrXnWrTX4ciINr8Q3BMpoSN/9Rc2elayA1GhxBgWd7fFdfZJBTc
 kvnXxdL9gx9Vg28GDlfOef30Uiqd6I/mKOIg9deuLC0PVazhhK9lYe2dyT4D8hAZWTCW
 2oAA==
X-Gm-Message-State: APjAAAWWYMFyN7g9inzoBNHtC6h5ZWM1ZrcGX3WXDoQT+c2WPS+ME0JB
 V58MTCG2bDO2cIrsc2/256+/7Q==
X-Google-Smtp-Source: APXvYqz9Od7LrtdNabwFVZ8GG/i6ZXBWtLY/l/7bOS3Ub7lWSGE6tT9/OMuQQK8puTIsii2K2HRu1A==
X-Received: by 2002:a17:90a:1706:: with SMTP id
 z6mr26420430pjd.108.1560264898607; 
 Tue, 11 Jun 2019 07:54:58 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 47/92] ram: rk3399: debug: Add sdram_print_stride
Date: Tue, 11 Jun 2019 20:20:50 +0530
Message-Id: <20190611145135.21399-48-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075459_255784_0636A41C 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Add code to print the channel stride, this would help to
print the stride of associated channel.

Here is sample print on LPDDR4, 50MHz.
256B stride

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 .../include/asm/arch-rockchip/sdram_common.h  |  5 ++++
 drivers/ram/rockchip/sdram_debug.c            | 29 +++++++++++++++++++
 2 files changed, 34 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 3935733871..69cafda904 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -132,10 +132,15 @@ inline void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 				 struct sdram_base_params *base)
 {
 }
+
+inline void sdram_print_stride(unsigned int stride)
+{
+}
 #else
 void sdram_print_dram_type(unsigned char dramtype);
 void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 			  struct sdram_base_params *base);
+void sdram_print_stride(unsigned int stride);
 #endif /* CONFIG_RAM_ROCKCHIP_DEBUG */
 
 #endif
diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
index 19e9225c12..9cf662675b 100644
--- a/drivers/ram/rockchip/sdram_debug.c
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -116,3 +116,32 @@ void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 	printdec(cap >> 20);
 	printascii("MB\n");
 }
+
+void sdram_print_stride(unsigned int stride)
+{
+	switch (stride) {
+	case 0xc:
+		printf("128B stride\n");
+		break;
+	case 5:
+	case 9:
+	case 0xd:
+	case 0x11:
+	case 0x19:
+		printf("256B stride\n");
+		break;
+	case 0xa:
+	case 0xe:
+	case 0x12:
+		printf("512B stride\n");
+		break;
+	case 0xf:
+		printf("4K stride\n");
+		break;
+	case 0x1f:
+		printf("32MB + 256B stride\n");
+		break;
+	default:
+		printf("no stride\n");
+	}
+}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
