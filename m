Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9D6130172
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 09:38:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMGF8mBkBMYchI00YGwHS4i9XqdpkXBqKlbpRwgpyCQ=; b=a1DY+1y/6mK57h
	gMHKqeIhfgjTPr1+LdHtI69bJIqRFiHpqQshoRUDzA9q0CC+/YpfXd9FSoQKrh/rhA7XrPOy7CFKB
	bO1XTaeRoE36iIbRixWDrez0x7yGwDcvrnndwiA4k9C+/qlG3yv62tcR1aQ0gy14jAgn94F+oyHvp
	jwhiukS85+ThxW/bHCN+6iQmJ/yvB7HyQBTmX8yKVrxtMtPJ1bfuOrYER8t+7GRHPoGb639wTn4x6
	XwWl/1Ts69oZS/Ce5MAon4wRMPXqkboJvz1zkW2jJUrty+gBFaGAgzlKJNdWShWTXkHFrb5PNKV5g
	RL45e0E9X31hoS/DL5Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inex5-0003BL-L3; Sat, 04 Jan 2020 08:38:31 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inex1-00039O-Pa
 for linux-rockchip@lists.infradead.org; Sat, 04 Jan 2020 08:38:29 +0000
Received: by mail-pf1-x443.google.com with SMTP id x6so23477986pfo.10
 for <linux-rockchip@lists.infradead.org>; Sat, 04 Jan 2020 00:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MdVD38WP8mrB9cxL9ngtMTtlvhd/lrRFS5qqLyy/3UM=;
 b=iybUH2ffwHZ8FvY3iZPk+LR2t8dDtq9viG0yL0TPSFkLRlTWCIcLZw7dfijQhVNjvu
 xggC//+3voyj7FjBrB6BQYlm6APrE4CDPNYjMwehXmtudqpw2o0I4c55omBmRgfbfXq+
 C5+HDr2m7KIvuEBhKq6Kj3L5DK9NZls9Ycz6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MdVD38WP8mrB9cxL9ngtMTtlvhd/lrRFS5qqLyy/3UM=;
 b=hrGjqk/fgW08zXZsgX0rZd7wf9DxxwZyeXd9L7jRPiVMZR5loASF+/7vC2G2OCBGvy
 +PYWlMEuw2r5WmBXXQ2btaAStAKgmy+ijbDbjZJGv7zgSLYZE72Rlu4EvovxnryKsOOu
 4RkvD59jTB9ZwmJYoKjPRG7epBNc7lGnXVLIuFPRwcuBoJRFronLQGDkxvGdNYK6dfV1
 bUSLLM9ARThJzgdZHR5H90R8ee0LurPa9I4jU5BRBq19djn1dmo2HcQJS6byOKfETcHB
 0Sj+ll1y9fzVtzo2VZjiwcsDwe1ZGmkCiq8MZ9CjIZFB2t3KI20lN1YiUc+FP7NWXRqo
 11FQ==
X-Gm-Message-State: APjAAAXe3u8qqYZ9VzCWKwgSeev0L18mStf9ZYw/zd7JirGzdOk7X3Sm
 ZRcyJACfXb4KaCb1ZZ+y6ACTXw==
X-Google-Smtp-Source: APXvYqwb1SzoGzh6oVwYxLX1rGGD/h1bIHAGWoWY9zLKIVVjVY3T8CX9gCYgbLdMkUz6RSO7x9kIGQ==
X-Received: by 2002:a62:be12:: with SMTP id l18mr80665263pff.226.1578127106636; 
 Sat, 04 Jan 2020 00:38:26 -0800 (PST)
Received: from localhost.localdomain ([49.206.201.128])
 by smtp.gmail.com with ESMTPSA id z4sm70201623pfn.42.2020.01.04.00.38.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 00:38:26 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v6 2/6] Makefile: rockchip: Suffix platform type with tpl name
Date: Sat,  4 Jan 2020 14:08:02 +0530
Message-Id: <20200104083806.3930-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200104083806.3930-1-jagan@amarulasolutions.com>
References: <20200104083806.3930-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_003827_834097_D95FD2A4 
X-CRM114-Status: UNSURE (   9.92  )
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Most of the platforms uses the platform type on their boot
stage image naming conventions in makefile like,

u-boot-x86-start16-tpl.bin - x86 start16 TPL bin
u-boot-spl-mtk.bin - Mediatek SPL bin

This would help to understand the users to what that
particular image belongs to? and less confused.

On that note, suffix platform type rockchip for existing
u-boot-tpl.img so now it become u-boot-tpl-rockchip.bin

Also, bin is more conventional way to include it on tools
like binman, pad_cat etc in future patches.

Note: usage of platform type doesn't follow consistent order
as of now.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 9998d238f3..e519103be4 100644
--- a/Makefile
+++ b/Makefile
@@ -1382,10 +1382,10 @@ else
 ROCKCHIP_IMG_TYPE := rksd
 endif
 
-MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
-tpl/u-boot-tpl.img: tpl/u-boot-tpl.bin FORCE
+MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
+tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
-idbloader.img: tpl/u-boot-tpl.img spl/u-boot-spl.bin FORCE
+idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
 endif
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
