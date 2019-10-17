Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD151DB6D6
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 21:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mD9u8mR7xjxKHwN0ZJxx0fPj3aHoGxoPjFrMgJnY9fw=; b=O6rlaCI0976PJq
	f/FbksaBYj9OES0JNc7TPG0N7MlmAna3cqaq4Ixnd+rP2Aflg+ahhy270u/8umqbz5AtlgA89o5kB
	2sZk8QE8Hay1chk6uqD92VpyeAjLmMkQ1aUPPe8oz3jiObGJfanVtxotCwCxx1b+JWrA+ZDCKb5Gw
	eRPYkDeJSKcsTCgFk3w3gFncBKoCyid2M+GLH549BTXf+cM/9oruQDF8jsATvJQ6R1eD+mtfnLRPP
	+o8LfiZY04phVajscOaKZpl5BU1kgEfSon4Vb/ItY1e8bIrySYXtCn8K9B02kkM/X9NkYiIkUBraV
	vPJS7y6QyhKnVGBGxhZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLB7q-00018D-4p; Thu, 17 Oct 2019 19:07:54 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLB7n-00016s-MC
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 19:07:52 +0000
Received: by mail-pg1-x543.google.com with SMTP id t3so1881019pga.8
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Oct 2019 12:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NdmLPLRPe+98EGV7GB7Iy+EA9njdrHI72DqxGxv83yE=;
 b=VNjZyhbhd+gIdAZ72ilnHNhwv3N7Cy66jaTD3d86EPLpfSrNMe49ZyiQYOyQ9BwEVd
 0sgfTALaSWBGWXMNSrnW2jVAHYqBrcKY69DtQ4i+BjfuqykN5ofyOZ61AL4bL3P9QpFy
 S8aUK4W5lAQnYVMl3N8wkrBp0v4SOVSEcg1TI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NdmLPLRPe+98EGV7GB7Iy+EA9njdrHI72DqxGxv83yE=;
 b=E/iErkdPi4dnT1qGUL9pJ9prJD6GYUOJzPBjH1s8kcErMdU+GVOOD3jVD9DXJWMCeW
 5Gwk/635VHiAhLVxhMBIkjUT7hxRCxRQAIqTgqpC5wre93Fy3UP2Xo6QIg2ZdaLV93QE
 zb60Y6uLLxvCjBFBPHaYrpktwgvWpOJitJQct7HXMyj2LNObtNDGPKJ9AK/pFREqq0O0
 fkpYxFL57Pt4nqsfiKGPcv6n8FLxsR3CDHn+rjsFPWYZPdCTUF5jyl/CE5B7VLnAWXwh
 X0lvi12KoBLKVMQ0QrGCUYx67+yGOIhLg7ClF4C2TrcqsYpKltCp1Y5UrUN3n426RFFu
 GgFg==
X-Gm-Message-State: APjAAAUQTKT44muKjnpKp3GpvL7iBc+ZmadaBH0rM9bKHmM7OobcTaYB
 Rd+Wn4KWLt5zVhvjO6xIQHhvJA==
X-Google-Smtp-Source: APXvYqzyKo7ksjrUJ/dmhkuOZ2k1cM+3mVb+fkQ5FUVMaqIKYHuYRTb30A/eGiAFMmiatmBMwBrGPA==
X-Received: by 2002:a17:90a:db43:: with SMTP id
 u3mr5964627pjx.54.1571339270809; 
 Thu, 17 Oct 2019 12:07:50 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y28sm4422736pfq.48.2019.10.17.12.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 12:07:50 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 1/5] Makefile: Add rockchip image type
Date: Fri, 18 Oct 2019 00:37:06 +0530
Message-Id: <20191017190710.29985-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191017190710.29985-1-jagan@amarulasolutions.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_120751_723547_56AECDED 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add rockchip image type support. right now the image
type marked with rksd, So create image type variable
with required image type like rksd or rkspi.

Cc: Kever Yang <kever.yang@rock-chips.com>
Cc: Matwey V. Kornilov <matwey.kornilov@gmail.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Makefile | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 6fda3268e7..ec55e0f6a4 100644
--- a/Makefile
+++ b/Makefile
@@ -1334,7 +1334,14 @@ u-boot-with-spl.bin: $(SPL_IMAGE) $(SPL_PAYLOAD) FORCE
 	$(call if_changed,pad_cat)
 
 ifeq ($(CONFIG_ARCH_ROCKCHIP),y)
-MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T rksd
+
+ifeq ($(CONFIG_SPI_FLASH_SUPPORT),y)
+ROCKCHIP_IMG_TYPE := rkspi
+else
+ROCKCHIP_IMG_TYPE := rksd
+endif
+
+MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
 tpl/u-boot-tpl.img: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
 idbloader.img: tpl/u-boot-tpl.img spl/u-boot-spl.bin FORCE
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
