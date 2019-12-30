Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C98912CDD8
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 09:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8qjh71Tgg37nRYn/izmplOU9oEhfdCb+42yd46//IY=; b=rVUttxB/Vwwph9
	P/hqtfHF6a45C/3j/Rg9UdfKVifv+tV7xizglHKcdzzAuhvPxntxUr8xEe7vBkH3az6zzXm3Oskqo
	KCIytddoVIpophMe0bhukNF3fXRiiTWbHTWF1Dd44U10mvWsz7LgwJkFRq1+CbFThgMonxF1PqGyj
	XsTKjRvMjSBVPkpRG/il/A+gKTesS/dZy0MP4IERH7PEef9VqodmajtNmnnIbpQct14HgOJKyGHnl
	kosVayjku+bcc6yp7D2LopNQkAieMJZAUwtSjrGT5olp8vSucKvyMBsY4HouOt7IJwouzo1i2dBrF
	753HpRycpnwOwRhR54qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqtv-00087C-4i; Mon, 30 Dec 2019 08:59:47 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqtr-00086t-Kn
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 08:59:45 +0000
Received: by mail-il1-x141.google.com with SMTP id x5so27341089ila.6
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 00:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D9ryt0GsA7ishn8yivgI06quzyuLhNIEc4cakGBTj+8=;
 b=ECDtOJfopDuxHvyV+RCT7sp4NHTeojZBL56HWrlxSt6NaUwYhgv2Azow7M1urduH8L
 fWfAg0v2Smm5Tfz9Jebe9IedrRJBZ/XL3ghYY+RPzzwpw6UpiDCQ3I2EOW2efu84HeVf
 C5olvhMKEnV7YIIIC4iPGQ1Kqh8X87BKNJfNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D9ryt0GsA7ishn8yivgI06quzyuLhNIEc4cakGBTj+8=;
 b=s/WZf6flsriTCsXvRRW0MJyMDpfxoHYi21DOpcqI45hvBhEFIFaAFmYvHrhCkZGZ64
 fOYumO/GZDi4RrMePVXEVBXH3lALFAqgM3DDZlTIZpeAgpxfYiSF68NPgaWUf3Tf3Kmv
 PAL2U+cwDzP3ndIvQFcycR8DrvKkxBru/IIqa/j5RAH30RmYtkatgqjmoJEzkcr9CBQH
 p3jA+3tthMRz9HCi/1N+NhsFvel2HXEScuSrQ8rjM/w3U25H35Y/+zkX9EXltrAWwLN8
 LEJhCVhYclhn5thjMr3QZm4whzKZVdp7pfiFaxVGDHKblZHEBY7hLJuq3CsSjWiMxDHU
 Zq7A==
X-Gm-Message-State: APjAAAUBA+hf6D0LadnQaCQYbJG5az+WI3WFPzd+4MO1FbeHGWQWdQiA
 j9kIpcrdF1u6tQZvDxll8vRCBv8MC7xF7hCtmhZpMQ==
X-Google-Smtp-Source: APXvYqwwm8rkjmgQpdHBLPzXasVTdlghxPth03atgLiSrjCHHYMfAJa9IxW7rONiT7nmrGcqSafAhQaLJgD+rZ7a39A=
X-Received: by 2002:a92:3cd4:: with SMTP id j81mr59289818ilf.77.1577696382668; 
 Mon, 30 Dec 2019 00:59:42 -0800 (PST)
MIME-Version: 1.0
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
 <20191230082819.30191-8-jagan@amarulasolutions.com>
 <CAJs94EYBrwf9Pt0R-_OypT-JHWGFpZYxRhKcUXWgXTFJi9O0HA@mail.gmail.com>
In-Reply-To: <CAJs94EYBrwf9Pt0R-_OypT-JHWGFpZYxRhKcUXWgXTFJi9O0HA@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 30 Dec 2019 14:29:31 +0530
Message-ID: <CAMty3ZDkaVCBmKeofqn7p+EVGdHx3NZDt13kN6Nx_WVFSF5Pyg@mail.gmail.com>
Subject: Re: [PATCH v5 7/7] doc: boards: Add rockchip documentation
To: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_005943_821872_6B6E941E 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, Dec 30, 2019 at 2:11 PM Matwey V. Kornilov
<matwey.kornilov@gmail.com> wrote:
>
> Hello,
>
> Thank you for the patch set.
> Currently, I have the following concern about documentation and
> overall proposed u-boot deploy procedure.
>
> There is a use case, when I have to use Rockchip proprietary TPL
> binary and deploy it instead of u-boot's one together with u-boot SPL
> and ITB images.
> It is required for debugging purposes because unfortunately u-boot TPL
> is usually less stable that proprietary one. And switching the TPL
> binary is basically the first step when I see random strange crashes.
> It is a good way to locate an issue origin.
>
> Could we somehow ensure that this backup deployment plan is still
> possible and documented in the text here? It would be great if the
> user could learn the procedure from the text, not from the source
> code, recovering correct offsets.

You mean to say rkbin => SPL => U-Boot proper ? if yes, I do agree
with this point and it is worth to document it as well. Kever, will
that be okay for you?

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
