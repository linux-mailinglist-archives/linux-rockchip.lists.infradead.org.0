Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB1213EBE9
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Jan 2020 18:54:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RuTcMQ8/VDl3pJ4oI0ub2uFWlFlgr1nmDkEdJFSk4gs=; b=KYAaZ4strrkL3t
	BIp4G4fPH+QBfN8sfLruJmS2AGDEiczqTDO+p8FDZoecjmQtXBoxe6gZucvjzSWtP7a5vdDB4yA20
	RmX/ezsdZ0jIEC4BAiPzZKRWgkOQrQAwuFh+5VnCqQphBLtq6usWP+JO1beHe9xaiAPBe6uiUnOIr
	gQ4enKyzpmybdzeGGegjuq/6u73l1689eFpoLqRN40aUfncpeOgw6SteEU+WRIvoH+bxZ7TD337Tz
	c3tBESBCyKJEXHSuLoWHDfekgtDEjzt0HxhLzYx/9333Phft8s6bJ1wNeGh2mU6ORf9y3F9O8fO8S
	3i+UezB02KNAckstt9Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9LG-00056x-Io; Thu, 16 Jan 2020 17:54:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8ms-0003gL-FC
 for linux-rockchip@lists.infradead.org; Thu, 16 Jan 2020 17:18:34 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9738246CB
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Jan 2020 17:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195109;
 bh=yeSp0fGwJ/dgY0fFHiYhsov/EbuVK+ryQi59MzAqvno=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qN99BKR4uuYvaV0p7EkeJpD0n1G7OxycmMcmdYmyiwnqsT3GBQWRzT3SZeWjAUYn7
 53YsrY1f4tOvKorJAq2KHbUBpxpwMPWFai4XnmBwLslwSXR201rnGSwV/ZRtnEoIJB
 Ue/ErdA7tyXwktsjcmnKzM04KsD+AiEsFYg8kEIs=
Received: by mail-qk1-f182.google.com with SMTP id x129so19807718qke.8
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Jan 2020 09:18:29 -0800 (PST)
X-Gm-Message-State: APjAAAVOyB0tc+kshLHoJjMPdU0/vsE8TWvSAB+foP9irZTsVJZDShBP
 rJHiHUNR5Aj38o2Wete24IGgubJj48FtTrij2w==
X-Google-Smtp-Source: APXvYqwFGJOr8mcO10BEbC3XUTOrgXEnY5Gd03lvreXKQUpv+wwI5MMwTMEmeMNDEkHT1VsOrGSSi3n3CwzN8ewQfCQ=
X-Received: by 2002:a37:85c4:: with SMTP id
 h187mr34765113qkd.223.1579195108958; 
 Thu, 16 Jan 2020 09:18:28 -0800 (PST)
MIME-Version: 1.0
References: <20191219145843.3823-1-jbx6244@gmail.com>
 <20191228093059.2817-1-jbx6244@gmail.com>
 <20200104215524.GA28188@bogus>
 <CAPDyKFp5BvA7tKpBUh-bpn5X4xvg8b9HuMO7+fZVJEp78=ToRw@mail.gmail.com>
In-Reply-To: <CAPDyKFp5BvA7tKpBUh-bpn5X4xvg8b9HuMO7+fZVJEp78=ToRw@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 16 Jan 2020 11:18:17 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+9w2wjwoOfnnKUBk9kOkZFcU6aWwyaw05ye-p3_WDcaQ@mail.gmail.com>
Message-ID: <CAL_Jsq+9w2wjwoOfnnKUBk9kOkZFcU6aWwyaw05ye-p3_WDcaQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: remove identical phrase in
 disable-wp text
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_091830_690263_F6F51FF2 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Johan Jonker <jbx6244@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 5:17 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Sat, 4 Jan 2020 at 22:55, Rob Herring <robh@kernel.org> wrote:
> >
> > On Sat, 28 Dec 2019 10:30:58 +0100, Johan Jonker wrote:
> > > There are two identical phrases in the disable-wp text,
> > > so remove one of them.
> > >
> > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> >
> > Applied, thanks.
> >
> > Rob
>
> Rob,
>
> Normally I pick up the DT doc changes for mmc whenever you have acked
> them (at least more non-trivial changes). I regards to the
> mmc-controller.yaml file, I have no queued changes in my tree for this
> cycle so this should be fine in regards to conflicts.
>
> Going forward, do you prefer to pick the DT doc changes for mmc, or
> can I consider this as a single occasion thingy?

I usually only pick up small changes if they are a binding only series
and if they haven't been picked up already.

Though I've been picking up a few schema conversions primarily so I
can check that they validate. Hopefully that's temporary.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
