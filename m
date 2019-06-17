Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAD547B2C
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/aTbLYYCoPPBTUk4PmVLKVKnibEhcYQe0Gn5IT7th2g=; b=o6fWUJQ/lmNCWD
	gRz+cDZvbMaS+r//dih1E+3Hp5u+k0ritGyJFnlQrJvwcVkazjNIAlQmKNaOX+5GTkpA3LnTz0FlD
	c/eiJSR2u2A9sVXrYTHRHsqg5rbj8GAjvOFbGL83Q7xJxkIj+gbDQ7t0Tpje4ozjCOfsafmO1wo5p
	/3YiWPdt4uIGYxF2A0CUVwkVGxwfRBs+eUJJ6Zlge/6q3O+B6WZazhXO34S1XRJ41L4XQOl6ApIpF
	0KF/DlltHUcJyE03flqoyS9Z4ZPrc4+r3QdsnghakIni+S2M56mquu1O/z9+QRpCH9XlSo7iIVYCw
	2PESbsb29XRtVPu1s2ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCw-0005zb-Ml; Mon, 17 Jun 2019 07:37:38 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCp-0005ty-NT
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id f97so3739841plb.5
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9JZi4HVv0p8dZuRrvh731hZ/CKyTOA5bYxvIe3SOIR4=;
 b=ivLiCQZkW5LPHplyPp4A8qKPSvHwYyBjjU5XjnQQz/g623d874AZ8RJNKPQwFC3bN1
 UFV+gzE7FhGFpFztZT+raQ+ZYyc01GgADMu0cwyTS0l+0G+igwczMhJWc0zWLhzXINEq
 7guue4CpiY83kiuUXeg96G6O28zj+cjBmTjK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9JZi4HVv0p8dZuRrvh731hZ/CKyTOA5bYxvIe3SOIR4=;
 b=qqb2Cs+HrM7UA1MalrEKDkiBjll35qcuR5GkNLl0cR+CaSR5OF2czJk+AHoLgLmQ1X
 xJetVxVdjMN8zgULj6Ia2QH8/mDOxL68VCTvfmBc81uvLBDKRRbUM242IK1e59m479+F
 +0hCiK6iDSaLylXgd3NSEKGjk64ntOC8F6FlSEn7ZfQ0nlxloFxIfEvVgw5QUVhro7Zk
 XYjOg4KbtfodaH8ZpsILV9av/N9E1VMuGgX5Ob0uQm2S8rUWonhEYt4J+uYdPcxjeuN4
 B8f+7TjCsyc5CoidBuJXTQ3rpncWQzLdUQI+wXevOodY/JpNujHdMjGDJMxEEwmZxMZw
 4LNw==
X-Gm-Message-State: APjAAAXzWmlJzE0xy4fHXxH+2wX2g4SSpO2yR94uLZGYmRlsW1wC4QaY
 FTaDF9Gimz93ruIB87EJxDLnyg==
X-Google-Smtp-Source: APXvYqyj9SFLWEsvwqnBKiLm0FRHqJK3mxtWjKv1yMcokrhEEwe1xWJozPvMIpoys0BKRTSjgTfj1w==
X-Received: by 2002:a17:902:bd94:: with SMTP id
 q20mr20365092pls.307.1560757051189; 
 Mon, 17 Jun 2019 00:37:31 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:30 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 21/99] ram: rk3399: Add bw enc macro
Date: Mon, 17 Jun 2019 13:01:34 +0530
Message-Id: <20190617073252.27810-22-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003731_926875_6D52B346 
X-CRM114-Status: GOOD (  10.73  )
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

Add simplified and meaningful macro for bw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index bac3efac09..c2374c0f83 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -60,6 +60,7 @@
 					SYS_REG_CS1_ROW_SHIFT(ch))
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
 #define SYS_REG_BW_MASK			3
+#define SYS_REG_ENC_BW(n, ch)		((2 >> (n)) << SYS_REG_BW_SHIFT(ch))
 #define SYS_REG_DBW_SHIFT(ch)		((ch) * 16)
 #define SYS_REG_DBW_MASK		3
 #define SYS_REG_ENC_DBW(n, ch)		((2 >> (n)) << SYS_REG_DBW_SHIFT(ch))
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 988672672f..e8203e4c32 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1027,7 +1027,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_BK(info->bk, channel);
 		sys_reg |= SYS_REG_ENC_CS0_ROW(info->cs0_row, channel);
 		sys_reg |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
-		sys_reg |= (2 >> info->bw) << SYS_REG_BW_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_BW(info->bw, channel);
 		sys_reg |= SYS_REG_ENC_DBW(info->dbw, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
