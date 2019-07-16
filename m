Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFACC6A7F0
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oM+mfVRiP7wpt0/IicCae/++hBGVBizN3tcIEWSXNM=; b=NBmmK0jR8y/Ppu
	lPW6swHSyra0BkGHXx/DSsM7XKEk3x++h46/uXmuFcIxgbaBfEekd+4uhO4KpPrNvSLEkAYconxGb
	j268r1N5YPurDNXNr0XgXKV2IXKZbyIZwc7JI3MaWvNR6g9ojUU60IDNxQNA99sOYKstir8piyD33
	n8lJtjBN6tYhOq5pTPXii3lrbjCFqv+5MKMvA0sPq8jaPthiQmAhAvhM/RLaivqLGjjQqZQtgie9x
	baPhQteQ05OdqPJCG0VmnAX5GCo1YkjQVG+nnzqhLEv/8IJFTFsF8R7714voWij8fs37FmH0HsCWu
	j/KSlzirS2Mn6xK92KbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8e-00071X-Qu; Tue, 16 Jul 2019 12:00:56 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6O-00040s-Nw
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:38 +0000
Received: by mail-pl1-x643.google.com with SMTP id i2so10016951plt.1
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zH+syothlLNOq/YNX9qJOZLAz+UszqSo5fMmy7xQGuI=;
 b=Q225OtBkeoMaWM9CQG/WLmbJqRUMjGprEq14dwFrdV13vKt5i4Q/HOBpcskyU4+G/G
 djqI+/9W5V5vMiKZaHFAWLinC+b/n/tEueN76r8IgsIwrt7awJ93wfFmFuwvZwUqClVq
 CnvemMpuaE3Z7xkjC8UxMJ8gxX/Ms3a8EnP5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zH+syothlLNOq/YNX9qJOZLAz+UszqSo5fMmy7xQGuI=;
 b=OX/y5mLGb2/wDttYrtmrqgSp78wRGYgN2CRZ6F9YlXRS+XS1M0A5zM/FsmJ/aSRKPb
 pYIOCZ7Si8jbLt8EInYWGmGDsQmcMMOddHx2629xrnCVqwMi9GCU7/GZoC+i6BKspnPf
 kqHjPMGs8cPSODx/gF8xSqMbi6r+1XQT7JcUKJhVGVZeqrtZFJzodo8DCBc9Jlc7G1iI
 blRCvJ/jpqX6ohHLPsEG6TC+i/tbg4Um3gPNPGe968Omr3gbZMFkOlSMwGifHQ3M5AzE
 gXiMPh38zwQa5vP5Dw+I4SQG40YIdem0rNLwunhZsNUbysiPMz6wG3faIF2XQRo4ne3O
 0K0A==
X-Gm-Message-State: APjAAAVhLglVEoHe6AKzaJgqBzI42oVhibrv1Cy2axhK98KyJevOPBlX
 Sx5fp4iXEOUqJQ+RuFmUPHNMGg==
X-Google-Smtp-Source: APXvYqzTxqO2BaxbsXWEI4f08ZfPL1fiUldVt7XtyDnKtwQVfE/si41JbuPY6HKuPLECViMRmXocqQ==
X-Received: by 2002:a17:902:846:: with SMTP id
 64mr34836019plk.265.1563278315917; 
 Tue, 16 Jul 2019 04:58:35 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 11/57] ram: rk3399: Add bw enc macro
Date: Tue, 16 Jul 2019 17:26:59 +0530
Message-Id: <20190716115745.12585-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045836_845718_3C05833C 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add simplified and meaningful macro for bw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 578db90241..4749233226 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -98,6 +98,7 @@ struct sdram_base_params {
 					SYS_REG_CS1_ROW_SHIFT(ch))
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
 #define SYS_REG_BW_MASK			3
+#define SYS_REG_ENC_BW(n, ch)		((2 >> (n)) << SYS_REG_BW_SHIFT(ch))
 #define SYS_REG_DBW_SHIFT(ch)		((ch) * 16)
 #define SYS_REG_DBW_MASK		3
 #define SYS_REG_ENC_DBW(n, ch)		((2 >> (n)) << SYS_REG_DBW_SHIFT(ch))
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index a83709f271..2d3f0f6902 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1096,8 +1096,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_BK(info->cap_info.bk, channel);
 		sys_reg |= SYS_REG_ENC_CS0_ROW(info->cap_info.cs0_row, channel);
 		sys_reg |= SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, channel);
-		sys_reg |= (2 >> info->cap_info.bw) <<
-			   SYS_REG_BW_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_BW(info->cap_info.bw, channel);
 		sys_reg |= SYS_REG_ENC_DBW(info->cap_info.dbw, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
