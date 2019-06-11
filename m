Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0533D004
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2+9x/sROfslLmiJwF7/rFMUTQGUR00iHY1vOhRQdsw=; b=R1u4x/P/0gcrMK
	aZuKLoPgr23qZnqDbhDjF698uCgUGJbBJqdxH+9IUXLVPwilTg65hx9IifW2WGUzxWRYBXpuVsJWj
	6VLL8Wju+LzPBvpdk5Pj9Xci1Rc8JgkXr+u+J3GJgELrUmLIv5nLNI6CGNW52GJJoz38DVvt2XWNc
	vRDD44z/ztXwXrreOR6cvv+mejfIc8+L2ajhOD7xEK7w4NdyzM3XaeN1c7M8dGm4ony4DF4b6FaHZ
	xX7sqtT0d/tFsN3zQYVGLHh9kczGTCBmCJwoAslHQz3w/lsOrlwFPkadZ2vhdZyGFR9kyxuXS/jRz
	HpcBA8wkbNW2EEzbVWGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiDs-0001BE-Iy; Tue, 11 Jun 2019 14:58:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiDW-0000nb-Kg
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:57:44 +0000
Received: by mail-pl1-x642.google.com with SMTP id cl9so5222474plb.10
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EGZ8QbOC3Lmpsm4GK+xadppvBx7oC2rPSb4ZO01EuV4=;
 b=kCyPcKSrZoiLK8CVxFaI7Rm7zyQ8KlBV2F6SNvLdxg9EgHHGQL6daqv2k045FwuuTL
 JzwFXKj1KZETEoCzkT4hGf41E2165xGDDRHXfSsbBYSvuR2RB/987A/OITaW5deVEV6g
 eOsLIE1mKwvXY56nAxB4Jwmgvjy6Mt+wdNfRY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EGZ8QbOC3Lmpsm4GK+xadppvBx7oC2rPSb4ZO01EuV4=;
 b=WNvlQTNG+O3vf9HABwBZr7zKr4PTF6DNsygw43/E4oydSpnjUvyLpos4DhE3mF6LqW
 zcFpogYCI83I8hXOGjIb+VcX4oxMMPlcvooYGSZtCSIzW2AFWuJj92CxMTS3oEiAP6U8
 xBX61riaA6pd5vagqEfV6aH0AbiW3NkOg1Qo6IpCNxpzQlQm8aW6aLqtVpEfeeMENVLm
 m3CAN/yb54x+BqEZVzJg4D+832r70ugArPJXKQfCGdJF3TeOtNwaz8hsST3TeM+eh3c4
 5ZodZ//lHgallKN6rWQynZqjyGWyCDcCuAGx+qGJwcEmGiYRJhGh68MBMNtqpxtXBv5L
 Hh0A==
X-Gm-Message-State: APjAAAVCZlzBdYdmz/e0fqnZ1M/JIWOS3hPToRop/U/7lwqp7I7Tt455
 /QdT5qqNIVykjBH8imir6qE30g==
X-Google-Smtp-Source: APXvYqxsU7m4qXL9HkubW2kPt53rrjtgE7E8G/DY28wODex3aiB59IrUuvxtXTG7Wi74iCJk8bJOyA==
X-Received: by 2002:a17:902:522:: with SMTP id
 31mr72398477plf.296.1560265062043; 
 Tue, 11 Jun 2019 07:57:42 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.57.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:57:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 89/92] ram: rk3399: Set lpddr4 MR14
Date: Tue, 11 Jun 2019 20:21:32 +0530
Message-Id: <20190611145135.21399-90-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075742_849227_A74265E7 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Set MR14 based identified controller in lpddr4
as part of LPDDR set rate initialization phase.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 50 +++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 38fc8ffe63..859f26462d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -2045,6 +2045,55 @@ static void set_lpddr4_MR12(const struct chan_info *chan,
 	}
 }
 
+static void set_lpddr4_MR14(const struct chan_info *chan,
+			    struct rk3399_sdram_params *params, u32 ctl,
+			    bool ctl_phy_reg, u32 mr5)
+{
+	u32 *denali_ctl = get_denali_ctl(chan, params, ctl_phy_reg);
+	u32 *denali_pi = get_denali_pi(chan, params, ctl_phy_reg);
+	struct io_setting *io;
+	u32 reg_value;
+
+	io = lpddr4_get_io_settings(params, mr5);
+
+	reg_value = io->dq_vref;
+
+	switch (ctl) {
+	case 0:
+		clrsetbits_le32(&denali_ctl[142], 0xFFFF << 16,
+				reg_value << 16);
+		clrsetbits_le32(&denali_ctl[156], 0xFFFF << 16,
+				reg_value << 16);
+
+		clrsetbits_le32(&denali_pi[132], 0xFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[140], 0xFF << 0, reg_value << 0);
+		clrsetbits_le32(&denali_pi[147], 0xFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[155], 0xFF << 0, reg_value << 0);
+		break;
+	case 1:
+		clrsetbits_le32(&denali_ctl[143], 0xFFFF, reg_value);
+		clrsetbits_le32(&denali_ctl[157], 0xFFFF, reg_value);
+
+		clrsetbits_le32(&denali_pi[130], 0xFF << 0, reg_value << 0);
+		clrsetbits_le32(&denali_pi[137], 0xFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[145], 0xFF << 0, reg_value << 0);
+		clrsetbits_le32(&denali_pi[152], 0xFF << 16, reg_value << 16);
+		break;
+	case 2:
+	default:
+		clrsetbits_le32(&denali_ctl[143], 0xFFFF << 16,
+				reg_value << 16);
+		clrsetbits_le32(&denali_ctl[157], 0xFFFF << 16,
+				reg_value << 16);
+
+		clrsetbits_le32(&denali_pi[127], 0xFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[135], 0xFF << 0, reg_value << 0);
+		clrsetbits_le32(&denali_pi[142], 0xFF << 16, reg_value << 16);
+		clrsetbits_le32(&denali_pi[150], 0xFF << 0, reg_value << 0);
+		break;
+	}
+}
+
 static void lpddr4_copy_phy(struct dram_info *dram,
 			    struct rk3399_sdram_params *params, u32 phy,
 			    struct rk3399_sdram_params *timings,
@@ -2295,6 +2344,7 @@ static void lpddr4_copy_phy(struct dram_info *dram,
 	set_lpddr4_ca_odt(&dram->chan[channel], timings, ctl, true, true, mr5);
 	set_lpddr4_MR3(&dram->chan[channel], timings, ctl, true, mr5);
 	set_lpddr4_MR12(&dram->chan[channel], timings, ctl, true, mr5);
+	set_lpddr4_MR14(&dram->chan[channel], timings, ctl, true, mr5);
 
 	/*
 	 * if phy_sw_master_mode_X not bypass mode,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
