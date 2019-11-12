Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBFFF8520
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 Nov 2019 01:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQloZCp4WrLhvjzR83PFUNweOnN9zuX/jHfFqx0kkV0=; b=kQIb2oEw4q6Tfi
	OsHVdR5TAbdwKEaQwIWsadO6dvp7s2QGc1vbTaeokLqKVGJJ0Xk4rqo8LsB7BWG66rHTQ+PB6XPn8
	SfwjgGPKYjSOita/acBAA5sR2JCJDOQZhKJlnr5DEfZzqoe97jaMNjlNmmHutokOMEj6U2OFxq/jt
	nzz6Jp9wtgufX91EhtJG9BY59jLHga/1b2lG8WL09AjYuLqbISji38H0LFOV/XsKMETaBlOHE9tJP
	HK7Qx/Imbz5VdJdqAgc+OaF4+wdtR7GrpodVdGIJs5r2V/8wr2HlE/US824j3KjYM1Lz/75xeRVrF
	ZaOq0y4ljVzHaOucurfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUJwa-0007hS-DK; Tue, 12 Nov 2019 00:22:04 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUJwX-0007gk-4G
 for linux-rockchip@lists.infradead.org; Tue, 12 Nov 2019 00:22:02 +0000
Received: by mail-qv1-xf36.google.com with SMTP id d3so4084968qvs.11
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Nov 2019 16:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/dnImrLwCfDWFxJwmcsvAa0fiZbE181aSgupMV2nY24=;
 b=C5Q1KEMKkzb4HcEXkTOJPf9NP+zVv32HQER+gqIaBPUy8TrBqvYgXA4a6ZJxQhJF0T
 V4W454ocgcQ+nRrClf/Rf0/EuAubuNVwGKPXuetbp5vMgyyTVzYikZTe9JDznvMQpnKC
 nFHPt13F7NQxnZtO5MGOvDrAk3C8XFKeRUhd4L5U/e5lOFyrjlVzxFl09pMv9gU+4AO3
 nrVP6Pilcs3UHBDHrWQwpbujd8o+kjXjENOdrftvsooEUn7HtsbMWRUGMAIC3cRN8wzP
 XSZH9EgE4zV7uwn2W/UmtV3YEUxXArBS6hD9ySZHrovwN9DWKn6vTrE8HiQCFvzUgEE6
 S/3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/dnImrLwCfDWFxJwmcsvAa0fiZbE181aSgupMV2nY24=;
 b=YN6k/bmCQG9LTL37ybLbtqKf/s3ntVpcc85MGKAsoj8czQlU/9sbgpi9SzFCOAlu4I
 1bs2f4ZftyDuy4N925U/g/uvbHD7Jwtfvis4DlPlTF09VuWRo4w5nHi82HGshazMtgxU
 X2KbFhHXXiQZJmBCwqa0GE18DJiLdOxMS/KnuM830QjWCg7957nhqoqy6NK0iBlskD8m
 nyQEX/P44zu2DiSTO7wwv6Dnb46Dvf5yL6fRk9UrCwBSg0NX3/+gzO0gx+NmPJ2FjCpI
 7uXAx86+34QxhlRhwQlOPZgMBF5onctOvI0g8e1UbOvh7ze+APc/7cvuSVEjusy/W8Ga
 7MVw==
X-Gm-Message-State: APjAAAVVmaiR8ZQJ/83+MvEhC+BVKKwMFXt9PfOeLi9LnAr3iW/bLNI9
 pZmkoPTV2cxbJlbzgoF08c2s+hMTIZqN8FS6GTc=
X-Google-Smtp-Source: APXvYqxYFiFSOqxTBYlU02T1WV3knqhZ26kuIrarnHYZNBxAn0VJSMNUVwyv0SKLBPxQak8zMSascx6jZ9zB4Wv2z7A=
X-Received: by 2002:a0c:f603:: with SMTP id r3mr11792769qvm.19.1573518119164; 
 Mon, 11 Nov 2019 16:21:59 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYo6mKSMXoDR7St1ynUJ9f3sh=0rgNAbbVvFAfJn82VvVQ@mail.gmail.com>
 <20191112000334.GA69183@google.com>
In-Reply-To: <20191112000334.GA69183@google.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 11 Nov 2019 19:21:48 -0500
Message-ID: <CAMdYzYqQdd5Es3DtWT3M4bBhMrTeZfz--eVGjGzin6jbH3ZwcA@mail.gmail.com>
Subject: Re: [BUG] rk3399-rockpro64 pcie synchronous external abort
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_162201_169195_06EEB7CA 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Doug Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 7:03 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Sun, Nov 10, 2019 at 10:43:48AM -0500, Peter Geis wrote:
>
> > I plugged in an i350 two port nic and examined the assigned address spaces.
> > I've attached it below.
> > Judging by the usage, I think this controller has enough address space
> > for another two port NIC, and that's about it.
> > I'm pretty sure now that the rk3399 controller just doesn't have the
> > address space to map larger devices.
> > I'm pretty sure the IOMMU would allow us to address system memory as
> > pcie address space and overcome this limitation, but I don't know how
> > to do that.
>
> I don't think you're out of MMIO space, at least in this instance.  It
> looks like you have 32MB available and the two-port NIC on bus 01 only
> takes 5MB.
>
> The IOMMU is used for DMA (e.g., reads/writes initiated by the NIC),
> while the MMIO space is used for CPU programmed I/O (reads/writes done
> by the driver running on the CPU).
>
> > The address space for the nic is below:
> > f8000000-f8ffffff : axi-base
> > fa000000-fbdfffff : MEM
>
> 32MB.
>
> >   fa000000-fa4fffff : PCI Bus 0000:01
>
> 5MB.
Just a note, this is not the device that triggered the bug.
This is a i350 NIC, i posted it as a comparison to my original email.
>
> >     fa000000-fa07ffff : 0000:01:00.0
> >       fa000000-fa07ffff : igb
> >     fa080000-fa0fffff : 0000:01:00.0
> >     fa100000-fa17ffff : 0000:01:00.1
> >       fa100000-fa17ffff : igb
> >     fa180000-fa1fffff : 0000:01:00.1
> >     fa200000-fa27ffff : 0000:01:00.0
> >     fa280000-fa2fffff : 0000:01:00.0
> >     fa300000-fa37ffff : 0000:01:00.1
> >     fa380000-fa3fffff : 0000:01:00.1
> >     fa400000-fa403fff : 0000:01:00.0
> >       fa400000-fa403fff : igb
> >     fa404000-fa407fff : 0000:01:00.1
> >       fa404000-fa407fff : igb
> > fd000000-fdffffff : f8000000.pcie

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
