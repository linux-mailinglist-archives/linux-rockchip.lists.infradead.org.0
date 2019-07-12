Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F833672AD
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jul 2019 17:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BMj7qy/2FdFnY1um7F4QiDMdfKiMicJCjq2WnFLcno=; b=LBLYe4ecNRpfHZ
	ditON5+Qtb9i62e4QEyj4X/jJulZKv8scjR8K+5Tu06FWsk56s25zkEJT8qYXwWhw8xu610ByG0Ep
	AdSF4VDQFhQuxN2UitCZ/yuEO2x8ZnjUc5XylHtIgp41iAgBcmNW8d/VtRGP4ltIAypffQeUl8WkL
	UpUHjcLE4IvVx3NSI++A7fy76k4o1AwwvACgsm0AJjyDVfR2om+8UVgbKfCWBM2a9B8/jnu5zr0PK
	KI4jrJaE2o2jOOQUX2dcmwFO4jBPk/dSL3dogb4HXwmH1FEAh/1Z15UPecYtSHwHnvKTfWyZuNLGc
	hXwg54L2KiLVsToEcVAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlxjX-0003aO-Tq; Fri, 12 Jul 2019 15:45:15 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlxjC-000290-9B; Fri, 12 Jul 2019 15:44:55 +0000
Received: by mail-io1-f66.google.com with SMTP id g20so21222813ioc.12;
 Fri, 12 Jul 2019 08:44:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Flz2lLRzUd8jYEWKtYpt6MQ7g5ki02yJxXMItOlTOZg=;
 b=We2rkLzx/ASt73n98R57oE/KK+m1QlgqKnjBHXLE5pWOjQ+6JNQlG4DKnpsaVAQa8m
 9AJO8HBPe6MYvx1D7tHKta9GNTGody33mGk1W2TWh0iTiphcW1JzJQrEOArZwEH1kmfp
 7gInPAgGR1MRuFIyJKP2e0lJz9b8Na3AWnBW0vIUyPiEnndFBykHRjbHh5I0RGgU6x47
 2EvXdTIq+YQGNl9v1FAl+3mwIrT+KZkK+/FN7CaQXLiRbe2z56ldqnypFLzBty/aoKks
 AE4qFEPoQWmDR31bal5pV+HpBUult2vqKExhrVCFk2n5747CTBKeRca6TQiKCUi0+uZF
 rzqg==
X-Gm-Message-State: APjAAAWvbg/ayOWoOCSnrobn4WJTXdC8GmVDdfOH+eam+8LIFubrXKM7
 dXfx33PqcG9y5sxnDLvRUIOAXctqmBvbgCz20vs83EBi
X-Google-Smtp-Source: APXvYqxN8RQNuZM9vdEm/CAl+zuh4AN5lTPTDyHWochsrNu0wOHqh5l7I2dOMKuVQTeQcmrFPVSCkwj2CtRyhmmnvW8=
X-Received: by 2002:a6b:e60b:: with SMTP id g11mr11691332ioh.9.1562946293139; 
 Fri, 12 Jul 2019 08:44:53 -0700 (PDT)
MIME-Version: 1.0
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
In-Reply-To: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
From: Emil Renner Berthing <kernel@esmil.dk>
Date: Fri, 12 Jul 2019 17:44:40 +0200
Message-ID: <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
Subject: Re: Asus C101P Chromeboot fails to boot with Linux 5.2
To: Alex Dewar <alex.dewar@gmx.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_084454_319165_36DB4FC5 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.renner.berthing[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Alex,

On Fri, 12 Jul 2019 at 17:02, Alex Dewar <alex.dewar@gmx.co.uk> wrote:
> When I try to boot the screen just gets flooded with messages like this:
> http://users.sussex.ac.uk/~ad374/boot_fail.jpg

Those seem to be only audit messages. You can try booting with audit=0
on the kernel command line to get rid of those messages, so you have a
better chance of catching the real issue. (Or conclude that audit is
what is broken.)

/Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
