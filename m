Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EE347B51
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gcxmCvTN+CSOsNDINg1bWZVRr97kwdayasF4EAwhMo=; b=XCraRYSs6vIw4P
	e05KeHQdeobYAuk6DLRiJ6r6vRQ+ct5yOUxSqTuvzDD+V6kO1lRF4tiJQeKycfvjwxTCEXUEX9fhI
	6PZ2K8jbsHpSdJszE/HP//DmOtiPpCpPGeazgIpOSBja9UFpp36Ij9Ky8bxLvDETuUY1tURr3DIUI
	ZECzZ7Db/tRUqgkWV/MUhxYdq8n21miGmQbDwIOeYHzW9C0OTwG1ZkuEaCfy2mJCNzTI8jOU403+c
	keGwx88nt0M3i795zPeCwrJg4ttnVPhf0pyfDj2fs8nXiMe7V5Am1G+OlzuVh9cdSzRIcT5cyLXqw
	eiuhZQbPG7pmw29CFX2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEb-0007jp-T0; Mon, 17 Jun 2019 07:39:22 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEV-0007gb-BX
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:16 +0000
Received: by mail-pl1-x642.google.com with SMTP id i2so3738317plt.1
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YhDRYJayB2k0cawndPjnxD47YtWIlk6b6/Z00e3SwfI=;
 b=QjxRtjZyvyAwAvaF2UQRr+CUeO27RCCFmTs0H1Kp/T3r89v2Uc0dGqydV4+qVNkk+q
 jMpO121AIVNK2wNoyNsAZsAZjCKcYyYMc5fmYm73rqN23B/OMhp8cKSgfczis4Mh5dVe
 SX2olyziNcMexkV7I0xq7XNFSTxJ6g1sfIapI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YhDRYJayB2k0cawndPjnxD47YtWIlk6b6/Z00e3SwfI=;
 b=Z8PESktJvITgtpPpGiCSL1i2PlxBxIoECcrrBzuBmb6fzPHKWVVS8OWuz7v+qlbLbO
 V8gh/U9CiutcCeljUFdA3+PNWaEod1YkfZNaloUR8Rc+i1ODiYE4fKhxhAcoJZ2oJSfd
 h1mQida2TVZ4VIjc4gFbVAJ6iHkoOG3xa94DPnRc2BTVNz69COYa5qT8BqBo4mhAwbk8
 NsaBr4fSN2Psws2Zfn9sC+EZQB3V64fuWdwNpLKdCuHbptVouOQ+ijGirQ6Zyb6wLhRk
 UUJNfr9ctQ22+eP5APn8/+miQnSrqwfW24yNtyieSnqp6IxuVlvsbVEw5sEkg8spMwQ1
 EZqw==
X-Gm-Message-State: APjAAAUlq2mMSrMphsd6W64S+SGN5UUylRxd8Y60tSXl5E+j60Sir2NN
 pmOG0neSHIZPQS3hc1POY8+neg==
X-Google-Smtp-Source: APXvYqyk/JLHnnb7fciurTdks6JnvJ3Rz1PNe00cXsVeGQiEqoZvdu0m0TeoAryELVYGsQlVH9q64w==
X-Received: by 2002:a17:902:f216:: with SMTP id
 gn22mr88260430plb.118.1560757154753; 
 Mon, 17 Jun 2019 00:39:14 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 52/99] ram: rk3399: Enable sdram debug functions
Date: Mon, 17 Jun 2019 13:02:05 +0530
Message-Id: <20190617073252.27810-53-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003915_448755_42749E9A 
X-CRM114-Status: UNSURE (   9.77  )
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

This would help to debug the sdram base parameters while
debugging existing chip or while supporting new sdram type.

It require explicit enablement of CONFIG_RAM_ROCKCHIP_DEBUG
for showing the debug prints.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index a3acb75dba..ae9ba625bd 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1248,6 +1248,8 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *params)
 		}
 	}
 
+	sdram_print_stride(stride);
+
 	return stride;
 }
 
@@ -1354,11 +1356,14 @@ static int sdram_init(struct dram_info *dram,
 		debug("Channel ");
 		debug(channel ? "1: " : "0: ");
 
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
