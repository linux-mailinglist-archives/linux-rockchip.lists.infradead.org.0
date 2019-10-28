Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350BDE7855
	for <lists+linux-rockchip@lfdr.de>; Mon, 28 Oct 2019 19:23:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+odPq+1DPRsUZqnfkEiK7ajBnO3PRBhBLauE3dlwnA=; b=XwMYeOR+qtf3di
	bV7Z97vG2JyyPNl/k5m5PMqcqDR8p1Ouh2vAlVg7oXnxUM2M49jxDR10KIP+2gFhGb9kfUYDKF+yj
	fFERnukNliz/lIoJjsL/LS/fNVnMzV5wneeyHmTtQr24Uw4Ubzr3q2vvvUG8E4wIoo1wZIL8u1scN
	JV1b4Kw9lxtRXqf2s9BOJ0zZV1gAQppRLm5uu+Yafa3S7v3MRlMIzwtRWJaJkBtWCA9XWOOB52KTn
	c7TDzm/0SscsXd4tcWWINSePx4jmG5mvO4bEPGVkqvrpSvLz+PJJ7mtEZxz8cCbftdy+W5axfMCVK
	d8UCYr2cMyHWEMiMUtyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP9fl-0001Ra-NE; Mon, 28 Oct 2019 18:23:21 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP9fh-0001QJ-O4
 for linux-rockchip@lists.infradead.org; Mon, 28 Oct 2019 18:23:19 +0000
Received: by mail-qt1-x841.google.com with SMTP id z17so9355492qts.9
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Oct 2019 11:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=peg4X2YDLFsoUnpFAVPaYd5Gm2QFG5TrZ1ugo/dtbLU=;
 b=CkbzqhhdCBHymQbOsmwwdOR+mroOsit7vTupBUGMMUgRKoqNnSd269BquNMXUNKn4b
 Rv1l98IQKmWNDj6BqZCDY/Is+k7acGen2NGjpQhVjH4kFn8/0nfeQeSTaM40LUSW6a4L
 XJDcGD7PIZlmiy3YrSLOwxCJgzDI4ZgDf4DSDbmYHpouKy/FI70GWEFs7DIhRLbGkFZv
 xY+kssIRfYAOcvwvHQl8WRi/ZRL+CZ1m91w4LR4hLNuNUxGjrCv+H1oO+Jf6+k7VUOE7
 DwdSQcmwIGgcVtwQesIXsknLYyBKAJEAVLycP93cfWS504gDmWnULb35VNHHxajwCyys
 OV9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=peg4X2YDLFsoUnpFAVPaYd5Gm2QFG5TrZ1ugo/dtbLU=;
 b=ERsmrxR5hBSKCDks6+250WhaWegiEuBjGiCBocQSA7Itrp+Atm0l9dInDDga1CJdbF
 pbv7QyXuqmrD+CkjqhDx4HgF/iH7zaxTsjIozrh3Orauf6nDhWDjfi4Rd2cjVIvcUvgl
 k6QPpDvVnfo+4O/GW1/62CUr0bu4HSJVN05uQ1jb7ZdxX+yqebau3AHE6EHoNY38S5O7
 HFumRJDKK75y16CZDow5WU5I1klnxMvOUgmn0YOB76AuxEsyr2h7It1MYKep+IzYRxa1
 Hh1OLtzGtwLlTKQZWP8SyBhdOxv/xgSvcUvTZZN+G3+wSuncwrJ/JOkKtNOTm9gmUR5u
 T+TA==
X-Gm-Message-State: APjAAAVjNNAUZmluwUKFJPiBhVV68jb5gtCFjbOhMzMdBV/icCw8qlEu
 YraOz6R3cGNDruudY9Q3HwQ=
X-Google-Smtp-Source: APXvYqwNKcO0LjFvNRg1Q0mjp25FutSewql7WzwxyZ+t1BtcKhVB0C+8qVlyVbEfinYvThKicEXQMw==
X-Received: by 2002:ac8:93d:: with SMTP id t58mr6805313qth.217.1572286996447; 
 Mon, 28 Oct 2019 11:23:16 -0700 (PDT)
Received: from firefly.sparksnet ([2601:153:900:a52:6f12:874c:d2b2:a9d0])
 by smtp.gmail.com with ESMTPSA id x9sm5808631qkl.75.2019.10.28.11.23.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 11:23:14 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/5] dt-bindings: clean up rockchip grf binding document
Date: Mon, 28 Oct 2019 18:22:51 +0000
Message-Id: <20191028182254.30739-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028182254.30739-1-pgwipeout@gmail.com>
References: <20191028182254.30739-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_112317_785094_933BEB9D 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, robin.murphy@arm.com,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Fixup some typos and inconsistencies in the grf binding.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.txt b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
index d7debec26ba4..ada5435ce2c3 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.txt
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
@@ -27,12 +27,12 @@ Required Properties:
    - "rockchip,px30-pmugrf", "syscon": for px30
    - "rockchip,rk3368-pmugrf", "syscon": for rk3368
    - "rockchip,rk3399-pmugrf", "syscon": for rk3399
-- compatible: SGRF should be one of the following
+- compatible: SGRF should be one of the following:
    - "rockchip,rk3288-sgrf", "syscon": for rk3288
-- compatible: USB2PHYGRF should be one of the followings
+- compatible: USB2PHYGRF should be one of the following:
    - "rockchip,px30-usb2phy-grf", "syscon": for px30
    - "rockchip,rk3328-usb2phy-grf", "syscon": for rk3328
-- compatible: USBGRF should be one of the following
+- compatible: USBGRF should be one of the following:
    - "rockchip,rv1108-usbgrf", "syscon": for rv1108
 - reg: physical base address of the controller and length of memory mapped
   region.
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
