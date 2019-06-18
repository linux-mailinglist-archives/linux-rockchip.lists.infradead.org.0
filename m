Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830044A7BA
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 18:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8EwjVgsuBXbxsZpBw7bCaPhxabaKoF11v7TOkzas6I=; b=EaJx9ebB+oxL8D
	cj2Eoc5GrCpxFk9phHPW9zmqA9T5OSlfkNq9SDmCr5csnzYAk/thfHgbikLz2Gm8N/v7j9D0HFcxF
	icTdvRoORQyvtNJlhLP5iGUFrUqYehFeqAwrNt91a8mB1BjMV5aeWl88IHW3NoU+zzfSOAcRQz6Rd
	Obi6GMEBT8Z54e7gOCDuWdfFAHXS+aXOQaV4proMxvpniUDIgITFyt2ewQndTUC60G8SDtkjrcdg7
	rwabSyMf6hbvtfHzsyUAHjjYqrjvb688sKTbCOs86hNnlQwKRx/u+rNqmDgt+ZX4soplTUTMLYrh8
	7faefc5uzNEcPqna8rcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHQX-0003Q7-3L; Tue, 18 Jun 2019 16:57:45 +0000
Received: from mail-ua1-f51.google.com ([209.85.222.51])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHQP-0003Jj-J7
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 16:57:39 +0000
Received: by mail-ua1-f51.google.com with SMTP id v20so1378073uao.3
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jun 2019 09:57:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yo2+hP1hmPeY+E4/cOlfBNumtIf57Ixxbx1NkiGuAs0=;
 b=q20ms9ya7UwfA4d8Xb9J3SlQOzyYP2MYS6fJF4YpAr0Jr9trCTRei3IXUftyJjRiMb
 0a8CDSMnvfAaqXZPn7eToTHVYnAhYLzGuNS07bDiCDV2oBVqk9yee7fIl+2fNy9d52+0
 pIxoPT2i4CR1hLrh9D7sHoqrdt6W0d9rLmsLHCF4vv20XhgBn6mpT4cB2b8K8XlcsPeK
 7tTmab9zRTc6e9cyuRgYkCtmMotq5nFpP4CNB4FWBqIOuYWqWw5qeD+gkJKNBHrJawEN
 6D+A8cjE+y0P15WVFPT2/KqeDHX5hxplOWbjWDF2iQshWiIIALjh/nZzXg5jfVBk8vG6
 /+mg==
X-Gm-Message-State: APjAAAWy1PAWC6pN7C2/v+eVeYgwXCchxW+x4edyWQGM4tUMB/0qb5n2
 Nxk1CfYnAINI5ORYVu2aeJT26fqlmBx6zpsnrKbl+A==
X-Google-Smtp-Source: APXvYqya/Im8N5Rkn3gJLwxn/tZrop0eZUP4okntGtk4A3/PbPyQ8ofkt5nndC/nVnQi4JD/GNfCrLwpFrBScdM3tMU=
X-Received: by 2002:a67:ecd4:: with SMTP id i20mr35616638vsp.210.1560877055649; 
 Tue, 18 Jun 2019 09:57:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190613192244.5447-1-ezequiel@collabora.com>
 <CAKb7UvhxnysEPrw2javE=OK8qop=3LPuRphbu_WQKvgCJYU6Kg@mail.gmail.com>
 <6b0519240580229d1cc4ce6d2c98326f2ef7f97c.camel@collabora.com>
In-Reply-To: <6b0519240580229d1cc4ce6d2c98326f2ef7f97c.camel@collabora.com>
From: Ilia Mirkin <imirkin@alum.mit.edu>
Date: Tue, 18 Jun 2019 12:57:24 -0400
Message-ID: <CAKb7Uvg1gfHdVv69sXFs8rgOP-bGkDuMXvikDMYdJO8EC1zxiQ@mail.gmail.com>
Subject: Re: [RFC/WIP] drm/rockchip: Support CRTC gamma LUT
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_095737_649676_DCABB68D 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.51 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ibmirkin[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Douglas Anderson <dianders@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 9:36 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> On Thu, 2019-06-13 at 15:36 -0400, Ilia Mirkin wrote:
> > Note that userspace may provide any size of gamma lut. Have a look at
> > i915/intel_color.c:intel_color_check which filters out only the
> > allowed sizes. Consider having a special allowance for 256-sized LUTs
> > since that's what most legacy userspace will set, and it seems like a
> > waste to create a 10-bit LUT for RGBA8 color.
> >
>
> Right. I will add a check for the gamma lut size.
>
> Unfortunately, this hardware seems to only support 10-bit, 1024-sized LUTs.
>
> The spec does mention a support 8-bit, 256-entries, but it's not at all
> clear how configure that.

It's up to you, and the more experienced drm reviewers, but even if
you can't figure out how to bend the hardware to your will (which is
worth a bit of exploration), you can still emulate it by just
repeating all the values 4x. IMHO 256-sized LUTs are worth supporting
when possible.

Cheers,

  -ilia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
