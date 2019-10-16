Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F236BD9855
	for <lists+linux-rockchip@lfdr.de>; Wed, 16 Oct 2019 19:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbdCwP5WVD3hqd35DkCkRLI4y+j9zYkJt8ttty1Sp3M=; b=iHGIn8dILmizUl
	zSc88dA/G8vPPShhpnhslKiMOG6MeMokJUJH+/UdU8pbB7+cS9YGnoRt41ezdZ35GkFbmI9R1Pd3/
	ulmq8VQ+BeSM5OM1qB6hce0xew5gZSV/6u/P5KkQEwQv7yNFufZ/bux4mlpKzSfGNO8cbwdPRjovh
	bGwoJPwkPCWUrNZru48SbFRca4m2BkdxTPVJfFm6IS/P2ZRyFuYiBbw72axvjZ6Ck/Mr9taZPDfbQ
	+7yZwSQetKQlPIVAqZJrRXVHz6mxD/jcB8fdbR3ThBo0ri/7E2xFh7/uBy35dT1UhhgEqb5TYgaYU
	R9P1OWXLW5bPO67SiyWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmpu-0006kE-1R; Wed, 16 Oct 2019 17:11:46 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmpr-0006jP-6L
 for linux-rockchip@lists.infradead.org; Wed, 16 Oct 2019 17:11:44 +0000
Received: by mail-io1-xd43.google.com with SMTP id q10so54900940iop.2
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2019 10:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/Cx4XbFIa1sZs/uYwPjwYiglQbxuZVrvQE3ZO+WHpZ0=;
 b=jSkGGBjcRJJqTIh9MNDMGXbNJRI/LCnDRhaNwChrhsAbMBmD27FKvuIkphNz9Zi+ng
 bCqKQB7KdnAZy13xgSk+OvLy669mvex/kNk+EG1zJh5tlurc77U7xwtFOHuirYtFDY1z
 bCoUFVI7zHaBEYuFhR+BesqwbCo3dh2BnZFbU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/Cx4XbFIa1sZs/uYwPjwYiglQbxuZVrvQE3ZO+WHpZ0=;
 b=EzujVnELUkk+7XPO8ADGWQbfmub2mEz9O6/EYr3rG7tSCA5cNPsbzCgKtgWcjDw+q8
 wny7bohTctneT23qsROEGQRtR7zs9iPjy5jTpNwEFV/ouz3xQRgWh8xSIT8AoctVM/fk
 pROzKJ+sMtaYnOX1DvnJjQJ0apDZ1OpLg/USurTnXMmcKdKlLu2OhkU7+jXFhcrCLvNw
 O4R6KCsi8MTM+plnhNDwQCCkEYBl4id/wy4MKt3zggTC6BzQrf630wQ7XA07GnPEkrYh
 b38lKezl9ekkNIJQiK+B1r26vut7PrOyCwUgFWYMRmw1uuIQDnKo5PdaFuTvuvAWKppK
 FNEg==
X-Gm-Message-State: APjAAAWYcKBwQaPAp6cK/QAcwu2cHP6bFcJslI37n86/DI3n/twK8sdk
 2ImSZxDeL8C0kKgf6EXI+EyCBu7oGCFe4BfwNz3hrQ==
X-Google-Smtp-Source: APXvYqwlghLwWKjPsF+lWMlnNrlMqW+5iR9QfBzroa/KEZbXO+cGpX2YYJRRQlH+ZiqpUprUp8HPYcr1Oo2PT6xdYkw=
X-Received: by 2002:a02:9a15:: with SMTP id b21mr3863352jal.103.1571245902352; 
 Wed, 16 Oct 2019 10:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 16 Oct 2019 22:41:31 +0530
Message-ID: <CAMty3ZAScACpT_ULQwJciLLu23eG_+JmYUCkrr-kOjJLe-E=-A@mail.gmail.com>
Subject: Re: [PATCH 0/6] arm64: dts: rockchip: ROC-PC fixes
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>, 
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_101143_231185_43ECFDCB 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Da Xue <da@lessconfused.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko,

On Thu, Sep 19, 2019 at 10:58 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> This series is trying to fix the Linux boot and other
> regulators stuff for ROC-RK3399-PC board.
>
> patch 1: attach pinctrl to pwm2 pin
>
> patch 2-4: libretech naming conventions
>
> patch 5-6: regulator renaming, input rails fixes
>
> Any inputs?
> Jagan.
>
> Jagan Teki (6):
>   arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
>   dt-bindings: arm: rockchip: Use libretech for roc-pc binding
>   arm64: dts: rockchip: Use libretech model, compatible for ROC-PC

These two patches are still valid right apart from renaming patch? any
comments on those?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
