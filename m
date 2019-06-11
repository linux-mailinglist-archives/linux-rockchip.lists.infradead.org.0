Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081F63CFA5
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Z49B0YEsbuAdtrVa1K7fvC0AEX502pKnZ3/wNE9aSY=; b=FCywZcKIiiqQGI
	ZJ6AyexQBbkAG9kHDDGxyVmoumcH4U3TeuRrfrhe68wraN2C0XVSBtyssu1C5vgt+Oyj7Q2ilP2s/
	ZdUvmP268pOoYrkz65gXvx7g2pBrXXYtPpwXXj7AqA9twNzJ5y/oM3asQPeqH58nDOtKb1I0l/ZMb
	C0rPV1pKAauyqM92VCR/W1Lw+iDJ0ob/ccGYCKv9x7iAZpNWA3SwXMCOJYrbdLSCANtI46xu7uLTp
	/09CfuYofhVaOZRGr/s5qnIGKkbZNZJM+3eIY+Wqe5WvWQB/EC5JhyAe4lblzu+/fRAsCugbHiWTM
	v2we/XbSXx7VU8rQHT0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAp-0005ki-RI; Tue, 11 Jun 2019 14:54:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAl-0005id-MO
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:53 +0000
Received: by mail-pg1-x541.google.com with SMTP id w34so7097323pga.12
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YkuVVRMXiZIA/m7cVW93c891hOorYukwdD8YcfXRjME=;
 b=ByS6AL9F8rihuRX+7JCs1LPEQBMVQN7XZYRU8nxu7gU9s54TpPCXb2S+gBql58oruc
 fcwcYkyWVZfBUBeaYJCKDYNuhmuD1g/YvcZWGNchjghr0yhVw95jzt11CP1N2wTfB/Xg
 Xpwp1W0nHKEu31sDdBJbbnN6zQl5V150Ugt+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YkuVVRMXiZIA/m7cVW93c891hOorYukwdD8YcfXRjME=;
 b=YEpl9wLQE95iTDJ3npGf53MblYpVjV+wGEKoKIWsGii8oKhTAsDkBL+rzK0DpX4vSj
 ixXXokzxGflV0h8NLsLKiYM2OvqAWJx4MEAMQVpQKlOuRxBTLR0X89o75S2YIkvzUWze
 RS7DfWefGffSERHlFatxBnwWwmUQCxpkONmgn1NbPnzmqPmVbe8GYCRn2Qq9ALZWKwy/
 fd0fdPwwQEmJOSoW8A7lEjun7YTYsEiWv+lSZglu8HbaYMapzo6ulrBACuvRjk2aNKPs
 nu6W++ldeiymDqrFF9pn4q7vipbKgHmx/zPx0JyHSuy+qpY0FFG4BmzVZb9Uhaw6NvWL
 TMDg==
X-Gm-Message-State: APjAAAXBfeWX4UErp5hy1yKNfNH5JWhR8D2kv3+Lh6na5Vbpicju13Iu
 dQr955WEquM9Q4ckiuelXm5hxQ==
X-Google-Smtp-Source: APXvYqwu0CelnaIOq3vHDryWyxU6kCmJwonGdT36q+TamS92+j1++iOG3ykVK749XDwRnvzzTTpnXg==
X-Received: by 2002:aa7:921a:: with SMTP id 26mr37534014pfo.99.1560264891166; 
 Tue, 11 Jun 2019 07:54:51 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:50 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 45/92] ram: rockchip: debug: Add sdram_print_ddr_info
Date: Tue, 11 Jun 2019 20:20:48 +0530
Message-Id: <20190611145135.21399-46-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075451_767623_D1F66E8C 
X-CRM114-Status: UNSURE (   8.48  )
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

Add sdram ddr info print support, this would help to
observe the sdram base parameters.

Here is sample print on LPDDR4, 50MHz channel 0
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 .../include/asm/arch-rockchip/sdram_common.h  |  7 ++++
 drivers/ram/rockchip/sdram_debug.c            | 40 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index ebf4148b4d..3935733871 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -127,8 +127,15 @@ int dram_init(void);
 inline void sdram_print_dram_type(unsigned char dramtype)
 {
 }
+
+inline void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+				 struct sdram_base_params *base)
+{
+}
 #else
 void sdram_print_dram_type(unsigned char dramtype);
+void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+			  struct sdram_base_params *base);
 #endif /* CONFIG_RAM_ROCKCHIP_DEBUG */
 
 #endif
diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
index c13e140fa5..69a6f94a73 100644
--- a/drivers/ram/rockchip/sdram_debug.c
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -32,3 +32,43 @@ void sdram_print_dram_type(unsigned char dramtype)
 		break;
 	}
 }
+
+void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+			  struct sdram_base_params *base)
+{
+	u32 bg;
+
+	bg = (cap_info->dbw == 0) ? 2 : 1;
+
+	sdram_print_dram_type(base->dramtype);
+
+	printascii(", ");
+	printdec(base->ddr_freq);
+	printascii("MHz\n");
+
+	printascii("BW=");
+	printdec(8 << cap_info->bw);
+
+	printascii(" Col=");
+	printdec(cap_info->col);
+
+	printascii(" Bk=");
+	printdec(0x1 << cap_info->bk);
+	if (base->dramtype == DDR4) {
+		printascii(" BG=");
+		printdec(1 << bg);
+	}
+
+	printascii(" CS0 Row=");
+	printdec(cap_info->cs0_row);
+	if (cap_info->rank > 1) {
+		printascii(" CS1 Row=");
+		printdec(cap_info->cs1_row);
+	}
+
+	printascii(" CS=");
+	printdec(cap_info->rank);
+
+	printascii(" Die BW=");
+	printdec(8 << cap_info->dbw);
+}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
