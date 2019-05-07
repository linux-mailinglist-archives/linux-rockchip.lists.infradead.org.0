Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C9B16AB1
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8I3KQmKOvsoZQFk6qlyxYcHt19dbwvm/tx970B5520=; b=VqcD8gWK127tSN
	w6NR9LbsAz9fsqO7/YIX31qbHZJCwyAXVrhynrEWeTNnw10xpbWJVLm+uUkA8MNr0Uv6jEJ/PjZKa
	VUzK6tZz986NCT+M2HkTmGpmp9Wsj5Zkjl6inD2hTuMd5AvbIrShNLuYCJ1AQg0tZCglRZGhLDhj9
	A3882H1JL79iFtFNY2PCsiLW8Yt6onSKioLt9xG0FqRyDrnbGBNrZIlxdvQL/5qhm+wrwfEIxnfDz
	ahkEP20rjNTuk6nSU+7F0PY1QNrH2h/FuST4HZM+NAG086gDSs44q+Y7FvF2cW3V9SZDBAuJOEiSG
	jnug2WawPY8BBjxyaaXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5DI-0005nd-11; Tue, 07 May 2019 18:53:16 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5DF-0005mn-5y
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:53:14 +0000
Received: by mail-pg1-x542.google.com with SMTP id c13so8770757pgt.1
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2T/g02vSdhzKLNB1+UB5bfvHoCpXVenojxqrwIbyhYc=;
 b=cpyAIKIoKpZrGymEpFJYyZk9DgKe01Dqwya2w2Lo2zTKoczh2UjIdoI5xgXXiotwXT
 YG/t8ITUDSJbYiG7xpc1VS/xu1E8UQjeZhutLn2Hs6iozH6VxPo35cEINPjA0FNmdvfK
 EjyToP3MKKLN2wtTPmTiEz2HeCLsGf5zh8ZPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2T/g02vSdhzKLNB1+UB5bfvHoCpXVenojxqrwIbyhYc=;
 b=jr38SxsJ1jdFd+1suGrePqNjeIQyZQQioAQYWjutBu4aL8dvftpvuSyOjMI27aQ0Eb
 P50oggpO0Z5v5R8Q4KOEQuoE5lMMUJpfa/6xefxiNb+/Pf8DVKU5OuaUhfNQ+w8bTJJo
 DUfSMwfCknoHG7LwVjCjL3TF+g42tnZjexEKS+NWvyd1pD9dSiRkYyve9l8/PMot2pdq
 jtzyXTwP5FKkr3gfxga5+05RA1cib5vuZsLB+3t/hmLhGrCPcp+Pm2gxHOUNBSX2L9sl
 mxhqpoFV73QFZwomC//aI4yTbs34Wafu5ecZfTBu6OXGuOCfmgLo9UX9su8zllUMhNix
 p3ig==
X-Gm-Message-State: APjAAAX+KM5XzWCHb+P6E8V9h7NaYayAk7bJscpaN9kFMXGSsMYR5wEi
 9zGLjQ78uKco8nGcnPIWQbd34A==
X-Google-Smtp-Source: APXvYqybISpj6Ou110zkXfY6V11+rGT9s+2NaJ2XTHznRCDZ+acqilpNKPnqTw5cN0RHFIL3/XGJfw==
X-Received: by 2002:a63:1c6:: with SMTP id 189mr39955860pgb.22.1557255192569; 
 Tue, 07 May 2019 11:53:12 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id l83sm14668086pfi.150.2019.05.07.11.53.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:53:12 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v3 1/6] Makefile: clean image.map
Date: Wed,  8 May 2019 00:22:10 +0530
Message-Id: <20190507185215.15441-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507185215.15441-1-jagan@amarulasolutions.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_115313_222114_5940F4CB 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

binman tools for creating single image build will create image.map
at the end, which has information about binman image node details.

current u-boot, is unable to clean this image.map so add a command
entry in clean target in Makefile.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index d6a6ef19ab..de11446ed3 100644
--- a/Makefile
+++ b/Makefile
@@ -1813,7 +1813,8 @@ clean: $(clean-dirs)
 		-o -name modules.builtin -o -name '.tmp_*.o.*' \
 		-o -name 'dsdt.aml' -o -name 'dsdt.asl.tmp' -o -name 'dsdt.c' \
 		-o -name '*.efi' -o -name '*.gcno' -o -name '*.so' \) \
-		-type f -print | xargs rm -f
+		-type f -print | xargs rm -f \
+		image.map
 
 # mrproper - Delete all generated files, including .config
 #
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
