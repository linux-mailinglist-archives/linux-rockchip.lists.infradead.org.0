Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C7F3CFAB
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ady/ERbYlERS8/+fFRwEQ7cjpxU+M4RIXyQZX5YL4Rg=; b=LS3+n8aNpq+nD5
	HaWSdfeeczVeQMpIqlaGZSPwKUGo/7uzUUsyqVd0vj9i9Aqt8qNxB6ruFyQfLIuLpmsFh6g0UVhqn
	xnVlHv15/nO9c56VOvfSfVMZxEGoCTmMQq0N/2qrPiJ+KKnErbGONQ33QhNRNKX0x/1InAg2ihaiV
	BCMvxBodqM4qoXhNYd+Bh1DVodG1yYQAp3un0TAd10+pGxhkdVZH/L/uRi2MCv/MJVIWgRWo9ZFqE
	FfMbjdwWdrpBvVtiXTeb/o6RDGCuHunwB9/uDBjF0EpvB/G4yY4rzrJnnqdSU+MRts5sPEyG6O4hL
	NAXkmy0jWvpkT84Edesw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiBD-0007DC-CC; Tue, 11 Jun 2019 14:55:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiB8-0007AO-Ni
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id j2so7597780pfe.6
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DjIAVTpqi9cTAQJKYzj4NaFyCm4Ruk4KU5YCL5Br3is=;
 b=Q0cM60yQt5VZA4ot+a2WsG/CJJ3hKWLbo3TJVnmwaIZmMLT/dfL2hCLOEHCm51rNR3
 daSpU6kiosnm2rt1xZwPnYrsMtshpxmhz2mO3V59Bd66nM/NAP9qWy1Ec8BNYFIF+cSE
 ZErvuaBzGsuQTGKFXwAUdmPSynqmRJsWXVESg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DjIAVTpqi9cTAQJKYzj4NaFyCm4Ruk4KU5YCL5Br3is=;
 b=OXE4YTNahavtViP+X3rB4CGiBGGLAVWpe6mKVAJSQK+oR6YTOJI7K8r0IfmfgFDjJX
 oyyUf75Ts5PL5mdD1yCLnfDVsuZErFJ7LsOfvxHj/r6pCdQiOKEaFlvxzUt9ZkBqnbho
 gX34riQtPuVLf50iPdBlx8QsoTPs4bbtuxxQGDesf27JTEbstLpQvghLJV535s1rLHUp
 xmAEGqtiyl7mMcGLDvzvC84rSBosH6zqi7AZLYCVKyyP+0MQP5+Uta487q3vqPC0EBRi
 KegomRt4CS7HXTmmx35HJYPl2/6VItMtL2HygI50Ab3E3E1D5Gr+iQnpsG/EtjuWHnY5
 eVSA==
X-Gm-Message-State: APjAAAXBKfSbOogZWGvsKzEcrGvJvHeE/UeWCUDvwuFpTbFLVKXvadFg
 QM7fR/5R4j4m2UnuSu5Kw0Izew==
X-Google-Smtp-Source: APXvYqxxEmoc/hUZ/8m/zAroOQTvx5AD8cbSQmPpQv1lg1WqOyqc+qWTIir4byuK+fwzG5jKdVTZBw==
X-Received: by 2002:aa7:956d:: with SMTP id x13mr41478496pfq.132.1560264914236; 
 Tue, 11 Jun 2019 07:55:14 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:13 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 51/92] ram: rk3399: Enable sdram debug functions
Date: Tue, 11 Jun 2019 20:20:54 +0530
Message-Id: <20190611145135.21399-52-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075514_800535_28881190 
X-CRM114-Status: UNSURE (   8.94  )
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

This would help to debug the sdram base parameters while
debugging existing chip or while supporting new sdram type.

It require explicit enablement of CONFIG_RAM_ROCKCHIP_DEBUG
for showing the debug prints.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index b658d7d1ab..ce38f72374 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1254,6 +1254,8 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *sdram_params)
 		}
 	}
 
+	sdram_print_stride(stride);
+
 	return stride;
 }
 
@@ -1361,11 +1363,14 @@ static int sdram_init(struct dram_info *dram,
 		debug("Channel ");
 		debug(channel ? "1: " : "0: ");
 
+		sdram_print_ddr_info(cap_info, &sdram_params->base);
+
 		set_ddrconfig(chan, sdram_params, channel, cap_info->ddrconfig);
 	}
 
 	if (sdram_params->base.num_channels == 0) {
 		printf("%s: ", __func__);
+		sdram_print_dram_type(sdram_params->base.dramtype);
 		printf(" - %dMHz failed!\n", sdram_params->base.ddr_freq);
 		return -EINVAL;
 	}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
