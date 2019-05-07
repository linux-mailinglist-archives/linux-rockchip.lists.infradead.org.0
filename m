Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 701A916AB5
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7K8ZiKHuWOxjaWyYZh5MO3nrSeQZZd2ZPobVL/94wY=; b=mLeMvRNtYLIpvQ
	KdxA2sSkuPDd4jqzDg9UDCEa0sVn97Jm8/UosUyMeODw/Euf0aGwl0V9CPrxai3hIlF7YstP7YA30
	9s1/aaaQRi8+5ygMf72yuVDf4HK5MK1NGbAL90zLc96dzSzvTUR2lwzh/f4sG9pmjm8RACZ8su9Uw
	G7heS8fWzjjWRErpdRp4dd0/bTomJwerHGtyuqIlj69GHZR1zSiUicfEza27Dci60raanC20VRAl5
	pzH4XxquYszl9DWNPNrFcG8WhQQ6M7WMjFSL6pRP31v5FK7zkmBQi1SpojXWSftKzEgpQhpqKJsq2
	N0QGXyaj2YJP8RqoEPDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5DO-0005tV-ET; Tue, 07 May 2019 18:53:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5DL-0005qO-Bb
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:53:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id p6so8745259pgh.9
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rqIb7elc/qRzjIW8DetaTB8B+9VR8vBHJgOxmRWjXRg=;
 b=k0PPTrpCnV+W+FCsipgQuQGj+MErHQCmn39j3LKASGC1UiKGNlBWQR9IaoHUV+mv0o
 oF/c1HKveFisjTJ2MLc2TMsOsEliTA6cCt2OKfvfmLpR/wUL/zy/RnNOundclJ0CrK7R
 bCj+euJ8YSHvVER/3c8DU0SLGxOfUTA3Uah1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rqIb7elc/qRzjIW8DetaTB8B+9VR8vBHJgOxmRWjXRg=;
 b=aiwPJD6aaT3j8DAIG9GfIi1GBthM0gadzjArgsgOwMFohEBY5sc5TLaxJznAYke5Nu
 G0EGeEGlAhk/Cxmhv5eHtFKtZUecOZ4bsBSj38ovHXH9AxanAe0SL7nkpEDEmhnyzBQs
 zZEZGzv1EmoJJmKCRxgTeTpoDbOfz3PBjwkU1iTDa44pDefHus+tEgN8QKF2JgaYUc9Z
 oOWvlzRoFuA0LkH61NlRixjGxo+enn9N5l5IdCDm517c1bO6F/RUaTIQhM81mesxp6AD
 qD07tr8R0eWgVDAA0G3YAKaIt/HVhdbIUvy+9r1SUTYt1TkBptfLh32WILuaG718vKGa
 12Cw==
X-Gm-Message-State: APjAAAXMKLjmfOu36hb30SnIemDDKbTiMPRoBeJmiSgyXoJUuSzGioP7
 S4HKI/fgqPyCjqxfFAlXAn0AOA==
X-Google-Smtp-Source: APXvYqxLjm/jfLSoEB7kf311TVQCmEdXBhiaAZH49aBZFq+F+dDKg8u/jM2ogoBzTOx2PUMa75+G9A==
X-Received: by 2002:a63:9d8d:: with SMTP id
 i135mr24820457pgd.245.1557255198884; 
 Tue, 07 May 2019 11:53:18 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id l83sm14668086pfi.150.2019.05.07.11.53.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:53:17 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v3 3/6] travis.yml: Add pyelftools install entry
Date: Wed,  8 May 2019 00:22:12 +0530
Message-Id: <20190507185215.15441-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507185215.15441-1-jagan@amarulasolutions.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_115319_404971_FA454FBE 
X-CRM114-Status: UNSURE (   8.70  )
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

Currently rockchip platform is using explicit 'make u-boot.itb' for
building u-boot.itb but if we enable CONFIG_BUILD_TARGET as 'u-boot.itb'
then the resulting u-boot.itb directly will create by make.

But, that indeed make travis build fail since it require python-pyelftools
host package.

So add pyelftools install entry as 'pip install pyelftools', this would
create pyelftools on travis host which are required to build rk3399 itb.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .travis.yml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.travis.yml b/.travis.yml
index 8bd49ef1a5..94b795ef21 100644
--- a/.travis.yml
+++ b/.travis.yml
@@ -50,6 +50,7 @@ install:
  - . /tmp/venv/bin/activate
  - pip install pytest==2.8.7
  - pip install python-subunit
+ - pip install pyelftools
  - grub-mkimage -o ~/grub_x86.efi -O i386-efi normal  echo lsefimmap lsefi lsefisystab efinet tftp minicmd
  - grub-mkimage -o ~/grub_x64.efi -O x86_64-efi normal  echo lsefimmap lsefi lsefisystab efinet tftp minicmd
  - mkdir ~/grub2-arm
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
