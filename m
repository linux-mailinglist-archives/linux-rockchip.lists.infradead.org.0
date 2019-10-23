Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AFAE2381
	for <lists+linux-rockchip@lfdr.de>; Wed, 23 Oct 2019 21:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gs+74xo7cJAilSvAqM9XkJhxnzYOSdxA8ac80GfryY=; b=oqzA/FDJozmuMN
	N2bsD949duMtoIhJaovFPvC6wgAToNv0j3jquiq8r1r3ekU8eXr+jSnqL4Tq/qqvj01rgR21dlrRC
	hVPA7E79ZIL0L0WTWfYJXz1PVv9HgN5gY+UlFbpod47IKPyhx00eU/naty88EwIxm30ZYSENljtlv
	MU//+5HtpPHQmH0Z+pqYSy5VjMpG3NrHJwmpt6ghEKt1XXNDMIJE6Qc773+Il0afjLYARmnu4QB7y
	zH7YLRQg9hV1u1Km9gXyn+DTjWos7dNBzwsqjgXk2ojlCH7/W9RUyxKyBwYZL9QZ4XND3IkfAfBly
	4DzNSWQ8jdGt/AjWZS/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMks-00051x-C3; Wed, 23 Oct 2019 19:57:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMkp-00050O-5J
 for linux-rockchip@lists.infradead.org; Wed, 23 Oct 2019 19:57:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id s17so10599789plp.6
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2019 12:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H2yQ4xkPkDVIKzB8uHsZTOyId3pkkwHkdUji6o4jAL4=;
 b=LrjZwwslckVSvsKECr8QYs7TaPKsnho4CbMPZLLOSTniGnCvMnXCmvOC2zPyoPP3gv
 7HIbk1mhRX/uguAs9oPaJuQUWXQizurCpGGvkxd6MYY7z3Nxe1pmJF9RVhhAP9A7lLKj
 M7vUURfS6U5w4mcu/1H7xw89L0+BF9t3nLK+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H2yQ4xkPkDVIKzB8uHsZTOyId3pkkwHkdUji6o4jAL4=;
 b=SBPXGbecf1jAewev+oIq1A6LtW4BA+3Vz6NsILi3AL4IyKkV8jL90GEw6vkYsdsRFf
 FVNoDmrKTW6LQox/OFFFfyD+4SxokDbZPJQs0iDgmX8zMfaaUzsUb+urz5RHWJ4Gyxou
 EfQ8yE7W593XPHNLONYRFK5y5FjQLhv7xtSm1OetSa+1NzfE5ULZ21PVdF1ufHvw+QvB
 BAoTw78aWuthpfa6i6ZEKHe1a7e1bs4q8po3WFYYjDAjp0vGUQoT/1DnJ9z0gMZUJTVV
 Man1n7kleOjLrMrkbBSAvzrHQ7ndj3EliaY48qyuyvYyBzpQM5GPHMimd7q8PyrjcAtD
 /Pbg==
X-Gm-Message-State: APjAAAUXyuuM4Y3fynPWLdB3LajJo9rZvez81o08CJfmIyPgpkax8Pq9
 nhOmAJTw5zxg2CYcOoNbZgTDqQ==
X-Google-Smtp-Source: APXvYqyvFwA6ENp8XA8B/hfYSFT4HhVc67cT1bohDTX9gXejct20JRGIR59yv7NX7SmHnk50Biz4qw==
X-Received: by 2002:a17:902:6bc9:: with SMTP id
 m9mr11360010plt.227.1571860630252; 
 Wed, 23 Oct 2019 12:57:10 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id o185sm31499280pfg.136.2019.10.23.12.57.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 12:57:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 1/7] Makefile: Add rockchip image type
Date: Thu, 24 Oct 2019 01:26:46 +0530
Message-Id: <20191023195652.7158-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191023195652.7158-1-jagan@amarulasolutions.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_125711_208747_4F64D193 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
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
 Makefile | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 6fda3268e7..3e05d3fcfe 100644
--- a/Makefile
+++ b/Makefile
@@ -1334,7 +1334,15 @@ u-boot-with-spl.bin: $(SPL_IMAGE) $(SPL_PAYLOAD) FORCE
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
