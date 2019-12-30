Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2211E12CDA6
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 09:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qrgZhClzTlWj3rLqurI4uA7PGGc4WIjAiLGn718Ki7I=; b=UpKy/J0XZxcodH
	g26SD6wJfkErTIQQEfEpdW8WB/BrM8zehuO5+2qDiZe7gXFIi0w6O81+B0qimG6Rl8ASk2rC27Y+I
	yJv5nLLKBlQEhvy2znxUwep5+IPvcNsHRG7zCpJdmLtOWYQpwsQuHvcHrkX/hIND0dHXQamwG22jC
	Z8R0pXtnWCrBlu0nYEnrmFnADRJPCt+GhHJKvjWx1Zt2nvoUP8miwn7p6vni2BSuX8dmIsNgQ/CDa
	TemksuyHqBEwhpG9BX/fJ3zPd/lq6QJRn+Czfs/9iSyR0Ahphh7T1Fn1HMe7iTrT60X+7pSdXv+fy
	hxaloSUHHcjftqyV/+mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqPn-0006Lu-KI; Mon, 30 Dec 2019 08:28:39 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqPf-0006IV-Vl
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 08:28:37 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s94so4474819pjc.1
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 00:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uFc+KeHVvPb55BWADcWbagsPR+XJZj6DCQVbpAY2/9o=;
 b=pZVHLKmhQPyIhmrgYudt1QMwR8RXPa7rUghgK2kEBPmRKjm00ENSHFgd6ojRPNkyZx
 rSfcfFGKhfRdTpRxI9qgPqDPxkKymljB/yG4rW/Q2YMY76Q3lQhHcvIktP5co5zf50ZK
 2UsKygSk1t1UUTILbpF8f748LyOyydxZpN+gs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uFc+KeHVvPb55BWADcWbagsPR+XJZj6DCQVbpAY2/9o=;
 b=l4Y5wWXS2R4s6Nmq7+dk0hcSpOK2D4e2lTIqp0wd+zz2uall0tDXPuoJMVphwNJfcA
 iDRoCPwYgWgDerpZ/I6mYJbz8yFzZbQu4/+L8s4tbwhgfUVXlpj6spWL328h4cpc/wDV
 FA7tDzxdJl8x8cSmkhUyc6X+y12SyITbFVI+xquyu5aWG8ARKzAqi/wSuyFfxN4xGjAY
 IJtoHbIM3mNGFnWXyFRfE0fYC7Ci7e+55Zfses6IHAbVboK9mxWvAOpmw7774YYMmGtG
 jDfv0+KtEGj/b2PGQYj4ydJy2BHhiFbWPmkOjgRmn1OiqSLCMhmi1LZND6IDY7GNZZVO
 zUqQ==
X-Gm-Message-State: APjAAAU+G0GaBTxmhcfyqrKUW5E7zDFQB6fA5UhJ87QHY0uTDdOi8qau
 1zRVkkW9v9lUV6S/jnHe1sXs2g==
X-Google-Smtp-Source: APXvYqwcQquGQtB+QP8S5L5ZMvPe0XGSVgp0iKPri9RhGGdS7/9kp/oAImyLau4kQrcs00EvwYqb3g==
X-Received: by 2002:a17:90a:3763:: with SMTP id
 u90mr45074959pjb.107.1577694511520; 
 Mon, 30 Dec 2019 00:28:31 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
 by smtp.gmail.com with ESMTPSA id s1sm46240652pgv.87.2019.12.30.00.28.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 00:28:30 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v5 1/7] Makefile: Add rockchip image type
Date: Mon, 30 Dec 2019 13:58:13 +0530
Message-Id: <20191230082819.30191-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191230082819.30191-1-jagan@amarulasolutions.com>
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_002832_035007_4B4A0961 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>
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
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index e20a206239..9998d238f3 100644
--- a/Makefile
+++ b/Makefile
@@ -1374,7 +1374,15 @@ u-boot-with-spl.bin: $(SPL_IMAGE) $(SPL_PAYLOAD) FORCE
 	$(call if_changed,pad_cat)
 
 ifeq ($(CONFIG_ARCH_ROCKCHIP),y)
-MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T rksd
+
+# rockchip image type
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
