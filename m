Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E41A41354D5
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 09:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnF8OnXU9V6cQm4G8UX9WTDdex7Vm+wmG0eQwFzfVbo=; b=kCNgnp1onrH1iN
	HapNaLuW7FjdDMmczGKrHQJ73SASJRHIAbhCGYrvwMWBvttcjZvCukr2/jkp4FNNih0JFBnNO3/kZ
	8ubgKPxt0vmWwQegm0K9wkRWQl4HmcdsjRa/iej5D/jEKpAoDO00vxKKI9R2CYW039YPXxd5kK9I8
	nhn8lL2Qc0g1f/tjQHeX261TAieAqR6goTa+4pwDcJA+Y1vktyJlP0tNx0KeW+00nKWyqjs0hV7hN
	nXuGpCr+Wq4001uGNzJ36hZJy5T3fs3bJhY1r3HNHOPBI4DH7FbnQvdSQfO1T1GXQ1kqpEMz63iwf
	BXVN8C/qQJ3J4TlwO/Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTZ7-0006YO-35; Thu, 09 Jan 2020 08:53:17 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTYx-0006Pm-Sy
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 08:53:09 +0000
Received: by mail-pj1-x1042.google.com with SMTP id j11so871064pjs.1
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 00:53:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6xGEGff8OdpIdn4cmrOvltKOrUfcqxXjukkBhY/H/R8=;
 b=BQzQsQeqgI15O2vu3EAtoqvbgfqJF1oBwen8787k1PlXlYEYF3HXInkvOGD4qqy1V4
 YRT92zClH4On2Rv//Y58Kfr1Ckzcx5AQiIeTyY1Gfx5ID9pwK0Rc5PE6NwQET1yYMi/Q
 VjgzYy2nzoUPOZmSHYXvryFiegKv335oK1aFY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6xGEGff8OdpIdn4cmrOvltKOrUfcqxXjukkBhY/H/R8=;
 b=XvpQQTlqymNW9YvlaCkpsR4Vl8nquuY8p+Ajje+DtRcATSR8j0tGCvpKKZzizulWbF
 ijnyebOzYQAS9TkhReRSEyQ4eQlVd06AE4fDIqQapCnpMyWSbwJzZqDzEYDOZui2QQSs
 5S/pbGEKFMmp30aacD1BC0cKsF/2Ak031lHPUC43fRa/4KKQ1OULLlmmjSUeQd9dpInp
 0YgZYJfRMrQYAwJdBvjjWUuG6LwCts0nWZ54Z7YWrd/YReyUE7Ap83Wb3GM6urkZi2Ht
 4dKr06a4vHkvg2ARdnfkdpxwejeiEAmv3Y73jl7dAFTL7ektxi5sss05sxZfM9/FBXoT
 nQ/g==
X-Gm-Message-State: APjAAAV8csbkbPhjln0kwiZ+pSAQNAn6Rq+EOIpp1+HLIyOkEdRNAX22
 AURBxz8jk20aMVYi4UEHkJPxiQ==
X-Google-Smtp-Source: APXvYqw5oO/04HjExa9dd4HeGhSvOiZ5YQ0nfCh+N4MC7gCoJFmoTo4M3kVXNEbGGXobgArlG3Mesg==
X-Received: by 2002:a17:902:b087:: with SMTP id
 p7mr10902033plr.10.1578559987266; 
 Thu, 09 Jan 2020 00:53:07 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d888:9871:544a:b516])
 by smtp.gmail.com with ESMTPSA id o17sm2139121pjq.1.2020.01.09.00.53.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 00:53:06 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [DO NOT MERGE] [PATCH v4 8/8] roc-rk3399-pc: Enable bootcount
Date: Thu,  9 Jan 2020 14:22:22 +0530
Message-Id: <20200109085222.22670-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109085222.22670-1-jagan@amarulasolutions.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_005308_060708_C5232908 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable bootcount suport for ROC-RK3399-PC board.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/roc-pc-rk3399_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index b30ca55107..e4b26b037b 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -55,3 +55,4 @@ CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
 CONFIG_WDT=y
+CONFIG_BOOTCOUNT_LIMIT=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
