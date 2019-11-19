Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF68101D38
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 09:26:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqqCxvIPm6SXJJk0pudh7X5M/do6Gh2GuAvwU6DgDZw=; b=WZE65h+spjofYw
	RUFlU1koKHAoD//ADAw+WnueFOzVgN0eJmhIY5I+++rOJ6kboJ4ExESIcU49HAFZU19m9c3IxpzKU
	O8EaNe9S3cXj1Y4KzvSG21cjktYZFZiP+PBP1IdhAj+vKl1ZOervQXY/zSnDXo7YU3Bq5blbBLwbX
	b4r6ZwBU88lslydqZqq+qg36EAusKNqNeCIvfXBZOQA+rwXtprc4aYozP4KhtJGy715mCZoqoY0l6
	h+vgeIZ1qbHTxuLhB2/Jk4o9L0iiTdusvEp26gj83c0pkw2QeiG6ZHN7/PWth7BYuo6kAYO1Gzqor
	v1E8jOHCD7o7mCqkELLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyqb-0001nB-Kc; Tue, 19 Nov 2019 08:26:53 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyqU-0001h2-Qe
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 08:26:50 +0000
Received: by mail-pl1-x643.google.com with SMTP id d29so11361890plj.8
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 00:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v7fC425jCnWij0DmsfoXu/aK4Hc4J6xgiLGjTZAuX+4=;
 b=IHuGCShtdDhithjQoSUvYXXIkyCPGGLIwMRWAxRsitRXtXEM9AOPObwZE76n9FNvok
 d9/zyWLMcCOHzTnowcmNI3ximEBsI/wUFYK9vp3NrRzoVuF0jrJJHzcmmjoGnpUzToV/
 UbHTWU9+F+ulq4Fg4laP8KRfXt0ik95P2Ql38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v7fC425jCnWij0DmsfoXu/aK4Hc4J6xgiLGjTZAuX+4=;
 b=N3gFdki6zM/xdWJ42EGNmwQtChSCJwx8KFK/6WRoD7FZm/T05aW15TXvRGLjTTl9dN
 qKcIKeXxY7meKcg6tgHJDL4TC56PnuXH9FYE8ni6ETPBijddqFgOEPmmCoa54HO3SHgP
 YzGxfu+vDIKTg5fQM5FijuzMgUsZ/JNMFsQGSElVR2MedaFBGFfkueiRczEL21wyw31T
 TfNpP4LhFargOHMHFyxkDxi+kq5qkHDwcFYP3pXMuutYWEZuhX2GR1IRFy8LHX0rayUb
 bq8ab8OjzfagQ89BO5AmBy50Nl82NY320l+4kXGgjFx4UGmG4kb9tAE5ONjt5mLO+eaL
 OAGw==
X-Gm-Message-State: APjAAAWXcaqtIL/77RFSjkwDupPDG0UL5FJ3aJNZ8utmELbCVMeMZjc0
 UtjB3C6/9cKZxZVD8ydEOUQ0iA==
X-Google-Smtp-Source: APXvYqy3BdU/KsTvtTvZzTsPB5Pa2jIcm++wZ8fwOChzNFQ7K740Rmtku7Rbf+Ytsez0Te6j3o9DPg==
X-Received: by 2002:a17:902:44d:: with SMTP id
 71mr32777239ple.22.1574152005920; 
 Tue, 19 Nov 2019 00:26:45 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id u7sm2312221pjx.19.2019.11.19.00.26.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 00:26:45 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 04/10] gadget: rockchip: Add rk3128 USB_GADGET_PRODUCT_NUM
Date: Tue, 19 Nov 2019 13:56:17 +0530
Message-Id: <20191119082623.6165-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191119082623.6165-1-jagan@amarulasolutions.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_002646_859911_2AF10D95 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add 0x310c for rk3128 gadget product number.

Tested-by: Levin Du <djw@t-chip.com.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/usb/gadget/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index e120b48b33..2da8b40e05 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -59,6 +59,7 @@ config USB_GADGET_PRODUCT_NUM
 	hex "Product ID of the USB device"
 	default 0x1010 if ARCH_SUNXI
 	default 0x310a if ROCKCHIP_RK3036
+	default 0x310c if ROCKCHIP_RK3128
 	default 0x320a if ROCKCHIP_RK3229 || ROCKCHIP_RK3288
 	default 0x330a if ROCKCHIP_RK3328
 	default 0x0
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
