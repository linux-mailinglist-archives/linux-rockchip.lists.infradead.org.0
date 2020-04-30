Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 909B31C08B4
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 23:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FUzZtGLOQij/INEISx/k8OT/Ng+eUKb6IGp4ur5WaY=; b=DYgoZj0+Kl60W9
	duJDPncMnRe+lnNEWk1ATpROH7/X99emyJHXeBoBcmqC3C7SJOaxRVdyqHmPQRR4hf8PdBPBtzU/3
	Dk3OPvhyl9TuCQi7KeMyd/hGIHPvCWxZvtIYpvLklpTIQrsn4WugonIA9CClu8D1/l5TkhfMuNf6E
	UigCkL5U7Fi+5OkYobb3ANpAzbHZdWJT4qcr2TUGT3p8w034l8+WY0jcInMbS7f0F3TBtEG2nGD4f
	N7PFKPYX7Txbz8xOp//4h/P+xSX97Cb7s6xV34QpFIdRfaa9Z+AQfVGDKnDgQHa2RkZEdsfof7l1N
	hbaFXOjMl7cEM25RSxBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGLH-0005pA-OE; Thu, 30 Apr 2020 21:03:35 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGLE-0005oU-6i
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 21:03:33 +0000
Received: by mail-ed1-x544.google.com with SMTP id d16so5715306edv.8
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 14:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gbalphc8YN/xmbgvFn1yK/9uIU9u6Gk0r/ELS6buWQY=;
 b=MFLF3uPTPfdvJ60m5Y7vHaEs8A4WTtuS2OTs0oAdrbDYydAjn5Kf+e2r4L4QXOR4VO
 qIXyWFBm9FdhG+nBgNaSO/5LceoOrhV9m0yKtv7pAihf/eC5bh7l4ojCvagq8evZPe3Y
 sGILX+POIVgdhWjnV24Rv6WIW20ugoZ33dSm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gbalphc8YN/xmbgvFn1yK/9uIU9u6Gk0r/ELS6buWQY=;
 b=NyYXKeFnZ/E3lPhHebJOZJ3/7jOX08wRcXC0PIShEEVYnUwdAeyZjfZGCBZm4960qf
 Kq8QioLSYRPp0a7QCxhXcRlUeAbmLiLPTUlTzQxu4WITZglA3JBmflSXG+izaOvxh0CA
 5MttIsnZ7ZBSqH5ZiJ9DTD6++1wvPUhyqKWlcoiE2iIzUhIcsNB3r8mKc0NQRRmJdO4a
 nRxd1xiomSEG3SeX890DCNFxFRDkkZ652PKXK3XGq8XVpgffSyR1untBX2HIWd8bvqb1
 e8ez8YCQqWOyzxCrlCB2nIeeFvMJf7REV+NB3LjJKcrbJiJQCrQxLL7U/pzRMIfLPcB4
 kTBw==
X-Gm-Message-State: AGi0Pubb0sa9KNqVAO/n4cStwbauyZQ8HlN1rGHqRWWcpZqQYMTnQ7Ej
 2ZEjpOTDlvCFf4xUm5EkW570nbLmEXD2SA8m/D9hNQ==
X-Google-Smtp-Source: APiQypLli+fAbfkafTYBsejWIPS6cyPcs0OFqfuRrfslOWiEZY4u1+on2j4HZr1Gm6yZPXd5zHPOS28ug1P9B7Q+reQ=
X-Received: by 2002:aa7:d9d8:: with SMTP id v24mr841705eds.27.1588280609328;
 Thu, 30 Apr 2020 14:03:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
 <20200430070412.12499-2-jagan@amarulasolutions.com>
 <20200430144628.GU4468@bill-the-cat>
In-Reply-To: <20200430144628.GU4468@bill-the-cat>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 1 May 2020 02:33:17 +0530
Message-ID: <CAMty3ZA77GU+f=_J23m65=RwRY3L3bibqgdzZyLR_HBejfsoTg@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] iopoll: Add dealy to read poll
To: Tom Rini <trini@konsulko.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_140332_673348_7F4AE609 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
Cc: Patrick Wildt <patrick@blueri.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 8:16 PM Tom Rini <trini@konsulko.com> wrote:
>
> On Thu, Apr 30, 2020 at 12:34:05PM +0530, Jagan Teki wrote:
>
> > Some drivers and other bsp code not only poll the
> > register with timeout but also required to delay
> > on each transaction.
> >
> > This patch add that requirement by adding sleep_us
> > variable so-that read_poll_timeout now support
> > delay as well.
> >
> > Cc: Tom Rini <trini@konsulko.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> This (and 2/8) need to say what kernel commit you're taking this from,
> thanks.

Linux supports sleep_us at the beginning where read_poll_timeout
supports, i.e. the reason I didn't add the sha1. If that works, I will
add the same sha1 and apply via my tree (since it has some SPI changes
dependency patch)?

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
