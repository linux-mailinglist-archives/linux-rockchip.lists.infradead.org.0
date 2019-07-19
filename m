Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC6C6E7CD
	for <lists+linux-rockchip@lfdr.de>; Fri, 19 Jul 2019 17:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUr7KqFQDqI56++xFVNE3alKOpO72P+k/yeruXKW6eU=; b=RPI+3QBsG/Uc8Z
	QFcnWG+EtHG5ho6pzRwFECEQ/EQswgsnIX5w37Uqw2xQak8WtD3dYtZAjEOKDPjYgTHa9XQi9Tlbj
	/LYB0TbFaBYoyMZ7j9xP+GaDc7Gnmag2SiwGhNot1isqy9MXwU/8aQv+g/7mTH+p5+5fJrUM6Fujr
	nOPatOKAVtB25kU/Rvtonj3+Ppsb3y/sRIPVaYeg5zn/r0r2tgvuppzafF8xNn0x2dMC19pv3u4vU
	474W/Ezw6HA2Pm9Ox7jmnI/CJDj0Ikcu89HtCAc926VHWLW7c0x15hsK6POHBdyPWnRfXUztOgzVr
	fNFkMyuiSHLyWCiKblGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoUX6-00069x-Pq; Fri, 19 Jul 2019 15:10:52 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoUX1-00068c-S0
 for linux-rockchip@lists.infradead.org; Fri, 19 Jul 2019 15:10:49 +0000
Received: by mail-pl1-x644.google.com with SMTP id c14so15726091plo.0
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Jul 2019 08:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oY9kl1w2DP/q5AU0xWJ63UM0i2Vhho6KqnqpfROEftE=;
 b=kS/xAv73k2MpU1stMm+pct5QH/oo6PDILZQS5OwhxPw/vH7PJffqQM43yHBtjOvKcr
 hpVO2SrQAnZ14LmD6CNYRm7lB9PcMq20PQ+qY0VF+QlnC3qc4T1v1nD7rLXdfxjNI2Yf
 B2/BEOdlKOG6QN1uUtnptdML61KtZU1DQaQoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oY9kl1w2DP/q5AU0xWJ63UM0i2Vhho6KqnqpfROEftE=;
 b=BLhdVuLbTOy3iuCRuIptndqeSz1M79fOzu5K3elVNcm9O+/YaAEJJb+GyWjfIXzAYO
 Rdcq3acvLbhznyZ7oSwoA0kUz3TjjnjWfM3tZvTPZ1sRlonJAd8uEFCMJJIWOjSgzkZc
 09hOd30M8Z1ds+D+RlrWodRfB2mNhlH650eGJmFOZ/ggiONFdl0QIIHtFeBzpIWDFxQX
 yeug0GtfDqOfcCZhu99UspCipEy89VPwgghUZJPgL6AWATvWm0OhRxDi5u3gpI8+AL86
 9KH01jZfupBozti/Dzh/WIwTER0tSd3Wy4PvmXibg1WwnQ7bb24vvyFOUXuDp7goVCwt
 qi1w==
X-Gm-Message-State: APjAAAW/TC2XpLGfpiLSH/zI941mUNwRdWcZP1TmBncxL0YD4O0nCfpY
 m99Ls90HZ2z/j9NFwv/T1dLABw==
X-Google-Smtp-Source: APXvYqwpkxBH3YrGMW1sxHHSnczDkPrqF/EFb17AK4abXRBbYl0AT37MM6DZOc3AXiSrk5+qZP2Reg==
X-Received: by 2002:a17:902:aa5:: with SMTP id
 34mr59500853plp.166.1563549047410; 
 Fri, 19 Jul 2019 08:10:47 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.222])
 by smtp.gmail.com with ESMTPSA id b136sm30711299pfb.73.2019.07.19.08.10.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 08:10:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v4 17/18] ram: rk3399: Enable sdram debug functions
Date: Fri, 19 Jul 2019 20:40:31 +0530
Message-Id: <20190719151031.14684-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190719151031.14684-1-jagan@amarulasolutions.com>
References: <20190719151031.14684-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_081047_906089_A6E9D275 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This would help to debug the sdram base parameters while
debugging existing chip or while supporting new sdram type.

It require explicit enablement of CONFIG_RAM_ROCKCHIP_DEBUG
for showing the debug prints.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v4:
- rebase on v4 16/18 patch

 drivers/ram/rockchip/sdram_rk3399.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 9df2f840ab..c59c985c19 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1251,6 +1251,8 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *params)
 		}
 	}
 
+	sdram_print_stride(stride);
+
 	return stride;
 }
 
@@ -1373,11 +1375,14 @@ static int sdram_init(struct dram_info *dram,
 			}
 		}
 
+		sdram_print_ddr_info(cap_info, &params->base);
+
 		set_ddrconfig(chan, params, channel, cap_info->ddrconfig);
 	}
 
 	if (params->base.num_channels == 0) {
 		printf("%s: ", __func__);
+		sdram_print_dram_type(params->base.dramtype);
 		printf(" - %dMHz failed!\n", params->base.ddr_freq);
 		return -EINVAL;
 	}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
