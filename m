Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EC684A80
	for <lists+linux-rockchip@lfdr.de>; Wed,  7 Aug 2019 13:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U+qIKUsmYHWBa7TKJF6szsoM1JSXlPqd/cE9rAENZa8=; b=RDNgx1y7iW1O40
	mg8e+LhPqgsrI4UGiJ0hGZaDIwhxwfUZHNmo0WEZkc7eUkX8anirv1pyZvg6PjN61QVqK8sWQCVa6
	VVgXMR4JH75EmG0u7oTy7xe4DhIniaq4RK0me0wqfu1gBtjuLjTRYTQBRJ+IiV72OYRSo8cCK+dsU
	qQNWhpkRqc+9um0X900N7gZzZEBbA+ndp3fGSWcF++NPCgBaYVXsxQGjUr1kfSB4n3IvY7HjsNSsB
	1BHTt46Xv1Jv1RCxZJ+KBKg1oZnaDUL65LGnHLQl6o/1k8Sqmk+1eQKZD3peDWn/oAhMCaNySWban
	/OgHvc2Q7/qhPMEF6t6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJxw-0005ab-7N; Wed, 07 Aug 2019 11:18:48 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJxc-0005Oy-Mf
 for linux-rockchip@lists.infradead.org; Wed, 07 Aug 2019 11:18:30 +0000
Received: by mail-lj1-x243.google.com with SMTP id d24so85090360ljg.8
 for <linux-rockchip@lists.infradead.org>; Wed, 07 Aug 2019 04:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=OPtDIWD1oyhmvgdHSOSG81TcfHz+uzX2gkbcVtn5ULE=;
 b=BKg1XWz76ThRetJwm2Ypk0pOm23cGUXpYhH2r8gddn3xAjYJ5CWfD0j1qyCgWuBRiO
 C/epNQA8aWh/sWQPKrkiHTvxQc4z0L3ncGkiKT0bAdwiq1C61QtpvTCcDCW2uisk7OR+
 7FlctYuyZKTgbys5tZ3EXNLSxgyj67UoT7nVsDQZ0rxhoBjyoHwvMmpjfKteZ6UV47R0
 6I76lQUTYm5Z1UICmiqzv9ysTQzx4j475gksfMPOTwidtbkVNH7ujF9jiaex+H0CKkWL
 VGvkpCPKtPKwVLnn7kpe+xOcNHPE88/eAg6A4xUwbiysqwIuGhMLzQf6UsUfkOI12GfL
 MXDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=OPtDIWD1oyhmvgdHSOSG81TcfHz+uzX2gkbcVtn5ULE=;
 b=Dlbs7C9fyA6api5pYDVFkFosJIYAPSFsBHlYTROunfBkAqMZbEysJB+G9opHecv7wQ
 LANbSBvtnkE4wfLYRIIgPwizgRiJ6COT0CzYdOzKX1nBEsrb8wpYTA1T23cHkiumiNiP
 R6OhLLZcQ+pS/kuHELL2NggR89kG7F7kRu3EuDm80mNNCqb1hSaC4My9H+hvLCNmuBk7
 RV9lLBVFOSEKjX5z/9Pll/aIk2Q72yk6aRAyIz/1YCC3lQl6kckwrt0VP0E67HLQ7OsT
 c/D0SEkdoSuwBrCS03fuBOMyctLUqThDTJdkDLX7lPddc7Aq5l9ZmBTuVTnimhjUtO/d
 SOtw==
X-Gm-Message-State: APjAAAX2HDDCx8LDJPqIZxtuhIwe+1+kGfAcnxStH5NPRwW0iOw3p+OJ
 owK8ymC6aOT6Oyn0Ah17NLLhhJOEMOSrtPJLAvDBSA==
X-Google-Smtp-Source: APXvYqwTAVe95rSksZw+erekFdosmSxQDfjfhjtERnRYyENWOwshak+UScYbzsb44hFPW/YALmJunz/0Cw+mT4FzW4M=
X-Received: by 2002:a2e:6e0c:: with SMTP id j12mr4497521ljc.123.1565176706159; 
 Wed, 07 Aug 2019 04:18:26 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 7 Aug 2019 16:48:15 +0530
Message-ID: <CA+G9fYvehn=5Rn0RHjFvCc1pCDFTUtxNeR11CQjD6rjM53D4ig@mail.gmail.com>
Subject: Linux next-20190807: arm64: build failed -
 phy-rockchip-inno-hdmi.c:1046:26:
 error: anonymous bit-field has negative width (-1)
To: open list <linux-kernel@vger.kernel.org>, 
 Linux-Next Mailing List <linux-next@vger.kernel.org>, kishon@ti.com,
 heiko@sntech.de, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_041828_768941_705950CF 
X-CRM114-Status: UNSURE (   3.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lkft-triage@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Linux next 20190807 arm64 default config build failed due to below error.

/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error:
anonymous bit-field has negative width (-1)
                inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(v));
                                       ^
../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:201:50: note:
expanded from macro 'RK3328_TERM_RESISTOR_CALIB_SPEED_7_0'
#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)         UPDATE(x, 7, 9)
                                                        ^
../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:24:42: note: expanded
from macro 'UPDATE'
#define UPDATE(x, h, l)         (((x) << (l)) & GENMASK((h), (l)))
                                                ^
../include/linux/bits.h:39:3: note: expanded from macro 'GENMASK'
        (GENMASK_INPUT_CHECK(high, low) + __GENMASK(high, low))
         ^
../include/linux/bits.h:24:18: note: expanded from macro 'GENMASK_INPUT_CHECK'
        ((unsigned long)BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
                        ^
../include/linux/build_bug.h:16:47: note: expanded from macro
'BUILD_BUG_ON_ZERO'
#define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:(-!!(e)); }))

Config link,
https://storage.kernelci.org/next/master/next-20190807/arm64/defconfig/clang-8/kernel.config

Build link,
https://storage.kernelci.org/next/master/next-20190807/arm64/defconfig/clang-8/build.log

--
Naresh Kamoju

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
