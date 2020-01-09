Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB8F136067
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 19:47:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkPdQK8vjXWwPsrvBWRE0DCgGTPXDdDWwJ1PNELznBo=; b=WRiE/DF0wUjTet
	4R2S5G1KFfYOKXuJjyp3ZMjND3TDT6YMBTt2hmMGD+OHNZfjN6VVMxeJrgBCqRFpyiNYFgv3arWF5
	e/Z4zLos12vJM2noMgJX+UuQPc0Eg+W8LXrs68homxsSQYwiAwkGgGZd/Ah52b5HxTDoAv8AryZ0p
	1Cn0JuI1mlPOKKijlnkItvuZW5Z+PB/Xo1ZuLKcmUP9ZukcX12gubotshcRJXG2/TtEtBivVeCKrA
	heP6M1caooPFE8pxJKM8iGuu7OQbhMFSs4KhwRu0aLv1z8or+Se/8LXLkyiQerNvmsVBdXOI7/ZrS
	7fNaWXD7kkIF85fU2v2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcqR-0002d4-AL; Thu, 09 Jan 2020 18:47:47 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcqO-0002cY-K7
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 18:47:45 +0000
Received: by mail-pj1-x1044.google.com with SMTP id bg7so1521098pjb.5
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 10:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d+jIcib05LKVddxJcU9EnThFBXIIwGZfMc8WfDOiGuA=;
 b=pEbJHhTSzh90Pa3BS+J/INBm1HoAmSZhBSbBYavCWDQ2cC2itkm8zLv0jVvqQLIyWX
 XPh6OOUIRWjqI6/JSpnfAOOJo1fGh9qoLtoN9qDmLLYVsxuMID2NNgZCsWZZfJu829Bk
 1s8utlZWilcpTy9HnI8aOPuoRZaH/fnPWVZyw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d+jIcib05LKVddxJcU9EnThFBXIIwGZfMc8WfDOiGuA=;
 b=G/MTGGf/t94xDALmhf44dySFNOhGWYvirCyUZ5L3NyNSvS6rBupe/cazP/NN9p1mwY
 B0/+WBKoDGWSw+yEKQw1eejLA1dUE4+UQZhflTBDlbMSvFQrPTOZqBw4LRnY/yggfx43
 8Ly99i0DzY5p5vYYBjVcEygXLSeNek/g9yDZJKvYDGBEpUKfWmUhaI8n6bCcNBx/wZuA
 k0O4j2Wm6JfIzi/bhgsA9wIvARyDlcgSBtiRqP/8HiLFNmNVkHRi+2oOKNPfP63rMC1V
 1+h6B5wIszEBXncYrqclF10NtDugTtO4dgNFn4bc0lHkQG1dpgwc0qi4std0xVypaEzH
 pDrA==
X-Gm-Message-State: APjAAAXKwFt3CWatGKwzkeURjtoqqV1wy8IQRMtTmSsLZ+DMcLbeBgqT
 s2zkLkEtrlKDovKc42dDFAWqng==
X-Google-Smtp-Source: APXvYqwiYq1s+qUJYh4FrWX3LIvmdwuRvjhsSZmy4VWYfzzgogmBIrkJOS2iWQsPITMW2CfQPOeyqQ==
X-Received: by 2002:a17:902:788d:: with SMTP id
 q13mr12929692pll.210.1578595663950; 
 Thu, 09 Jan 2020 10:47:43 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c4eb:be5d:1485:edee])
 by smtp.gmail.com with ESMTPSA id i8sm8967306pfa.109.2020.01.09.10.47.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 10:47:43 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v7 1/7] Makefile: Add rockchip image type
Date: Fri, 10 Jan 2020 00:16:16 +0530
Message-Id: <20200109184622.3098-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109184622.3098-1-jagan@amarulasolutions.com>
References: <20200109184622.3098-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_104744_660597_557B86F3 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Cc: Matwey V. Kornilov <matwey.kornilov@gmail.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index e20a206239..e264b2a49a 100644
--- a/Makefile
+++ b/Makefile
@@ -1374,7 +1374,15 @@ u-boot-with-spl.bin: $(SPL_IMAGE) $(SPL_PAYLOAD) FORCE
 	$(call if_changed,pad_cat)
 
 ifeq ($(CONFIG_ARCH_ROCKCHIP),y)
-MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T rksd
+
+# rockchip image type
+ifeq ($(CONFIG_SPL_SPI_LOAD),y)
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
