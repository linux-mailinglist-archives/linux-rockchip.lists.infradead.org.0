Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6DD171CC
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 08:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gioednkZDY4ZMabWZQF2BXre66xDCEDiuaEg1vQ8jAA=; b=N1W1g5MPugy/om
	ILEDJ8bFYvOUu0jcIBMxeqxCL6lg6Ux3HJYi+XU5oHbzqOwJRnNvw9qn7mqfCXHlCxLez+d1E+YhE
	pdZ9f+dEtgo9eNVny6ZgdpvqmUSYt8t3XLkof9aRFbh60pnFl7Czg7BtEO5QlApmXKjqyQR6o/p0L
	+YCUF6q2prVj7oKHQXcgeMIKh9C969eoi/I6Y2zCp52GAMxmkgywxOffomPf2LiIL1ftaWbLF6/QK
	Calb7Kk2DwYstN24MQU2nmRB58yCi3L5+sRm5s3hNozXco+ivL/Pnt4jYeIsQgDj47hTdDUG9RKQZ
	BqS4A3aj0kSyAjjCuCiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGFV-0005uh-A6; Wed, 08 May 2019 06:40:17 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGFR-0005uJ-U9
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 06:40:16 +0000
Received: by mail-pl1-x643.google.com with SMTP id x15so9429049pln.9
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 23:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XOO2rvueYSuWIGhM7d7TnrnUVFlbCl2qMqPqO3No5ck=;
 b=pPZm92bd+njOtkeaAOtd59Yn7GpTCRufefjR+iwKTXBHWdlxn9xPKLlHNMsu7pSg5G
 v3C2tIG3z5FAG9NPQ6sxKR+P5EtlGJ9GLtmUHFMgWNjmNN9MoWitE1DiyM6Pfx2BBF3P
 sVzDgN6jH5ehKC9rWrxns39WfVIb1AZ/Iltfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XOO2rvueYSuWIGhM7d7TnrnUVFlbCl2qMqPqO3No5ck=;
 b=Le4bNxiiybZySIO724ssKPkZNBZkwu8WcmDu/PhvZJhWr/bae9uxFh1iavy9cvWubM
 hzcRWU5fMUBXQk1DaJWcT7jla0itV6CiK4RYpvuec79X/fNZr47Owhiqdkh9gqsZLXmB
 Cl464gS3//9R50eT5fVEZdCvipXy9U4jcRp2yUvU3Isz8fIvM390WVcvJPY0UeTfh1Ug
 PLiUNYfl/OE5pqEoPwnJjj02bMOKCHTdl2EuhzGXtiSX3EpJapcXw96Zspr6rkWxMt/X
 lCiMWtXNyFefGtbtQ/hMo29s5v3RetKifcrzNm/79N93cbrHP6gUm01kz+VUS6fP+bgt
 4eDA==
X-Gm-Message-State: APjAAAXv/jUzIAL9vhnNUm+Nwa32gZ6+utO/W62lSfZAe1L62UlkasrI
 FdT+baptT4LI79ZPl1pBQs4xu/jl1J0=
X-Google-Smtp-Source: APXvYqwYwZ3SJFz6hcv+VkBW1b/gYvH3/6+xVxR98AmgOBq4hlZ/d0kPs/70lBcpoJ/xF9nSOIBO3A==
X-Received: by 2002:a17:902:8609:: with SMTP id
 f9mr43284128plo.32.1557297612521; 
 Tue, 07 May 2019 23:40:12 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id z187sm12739340pfb.132.2019.05.07.23.40.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 23:40:11 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH] rockchip: rk3399: spl: Don't init dram if TPL enabled
Date: Wed,  8 May 2019 12:09:56 +0530
Message-Id: <20190508063956.26549-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_234014_693174_5689D9DF 
X-CRM114-Status: UNSURE (   7.49  )
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

DRAM init would require in
- TPL stage if target support TPL and
- SPL stage if target support SPL alone

So, don't initialize the dram in SPL if TPL defined and at
the same time enable it if TPL undefined which is SPL alone.

Tested in TPL and SPL supported boards.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/rk3399-board-spl.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-rockchip/rk3399-board-spl.c b/arch/arm/mach-rockchip/rk3399-board-spl.c
index 3eea73ef33..a439e09b61 100644
--- a/arch/arm/mach-rockchip/rk3399-board-spl.c
+++ b/arch/arm/mach-rockchip/rk3399-board-spl.c
@@ -198,11 +198,13 @@ void board_init_f(ulong dummy)
 		return;
 	}
 
+#if !defined(SUPPORT_TPL)
 	ret = uclass_get_device(UCLASS_RAM, 0, &dev);
 	if (ret) {
 		pr_err("DRAM init failed: %d\n", ret);
 		return;
 	}
+#endif
 }
 
 #if defined(SPL_GPIO_SUPPORT)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
