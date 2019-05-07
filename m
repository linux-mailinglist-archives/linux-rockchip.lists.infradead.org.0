Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D92616856
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 18:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/aEkGBO0pBrYSl3eS8XSY2LNfnk6finc6N51QGUFrB0=; b=m/K0pc0MRuAl/3
	EzsyNk6sBpPf+1ofsjB9Ps5V2Ncx0Fj9GQTpNEcl6v27KzV2SyN2w+G4Dk42bofTLIpXB1kVoDzhY
	NXO8vJafLUG+r75qtFj3dmTzwagpohreOJOIC6qmp+/TLNIRLMEg52WVf/8a/QJoLdcZJVCqo1mMs
	yTLA11HNb9pqkTm4XCv+pAyAj6sCVWyM0I8N7FGMOBeIpbzvtK2ttirJoyuBQ6NwPoVNfSS4WTEmr
	nXEaGWzJRKXT7s7KgX8liyWZBSr84WBBM2xMBVdImSDJKuvbRiF9fP6Xn3AslIpAGaVE3qpxxpmMW
	pSu3TMmUgdIRfuFRp0eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3GP-0003FJ-0x; Tue, 07 May 2019 16:48:21 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3GL-0003Et-K7
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 16:48:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id f23so14981592ljc.0
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 09:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=esZbZU1pgP8duus3WEzDEySF+/YyqE39bcTa0BgZfHg=;
 b=fvP0O3tZ7ZjnILeoVNXqpBW5oInlJpRKtMsHavAo8Xz6rGRg89S6GZWi4pGffqfCFg
 oatIXFLAoC9CKwk1ym8unSGXwAYeKchgsJsEKUm2XnsjPb9LqnjMjeafzahNU3X/YERf
 pCPdN8c31gCwwkI7LCI3zaZ1cxosDpm3CpW9c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=esZbZU1pgP8duus3WEzDEySF+/YyqE39bcTa0BgZfHg=;
 b=NneNr+eAqV3ScUmP3b9o3pzSrACsWuoPt+0eIUGv7oSVNKt03M48V8Im+WYnzpRUDb
 UQ7jTM95cCav/BLB7Go0QmfY3++L8l6EDjRBvKx2xR6DMKdHUPUNpHVc74SH5afFkdfm
 2ro5bAJAHvIX+GyZcOhUEFOPCrQQpseghUDMRQyaFoNG/Ij6wcVeB1+Q7R+/eoT+rFtt
 M1ATn5B9vd/dKsLzI6ZA7cUolrVeZzgspXWI/NeAQlBsevI21qeZNjnx4AqyKDE7vl1o
 AWRNAydzmhHg7o/Q0B0SpWHLyd/u70E6+AGjH8JF/CqNMUvfPGNmbtSAHBqZDy2cvX9a
 DBDw==
X-Gm-Message-State: APjAAAVNZNJyc7pxG9p57zy29l5yna/70EiQmM93dn3Y01r3Q8cbAYGw
 /hWWurihD/6RM9w36fQ0xPlEb410bNw=
X-Google-Smtp-Source: APXvYqwI2d8ueUn03CAZI8q3XtJju+92ZHdVh7095cHCL3PIhOad6krCakSn3McICqIN8X1JNB1NVA==
X-Received: by 2002:a2e:9703:: with SMTP id r3mr8385168lji.37.1557247694326;
 Tue, 07 May 2019 09:48:14 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com.
 [209.85.167.47])
 by smtp.gmail.com with ESMTPSA id k8sm1841046ljc.91.2019.05.07.09.48.12
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 09:48:13 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id y19so4791361lfy.5
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 09:48:12 -0700 (PDT)
X-Received: by 2002:ac2:54b7:: with SMTP id w23mr821657lfk.139.1557247692296; 
 Tue, 07 May 2019 09:48:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190503174730.245762-1-dianders@chromium.org>
 <CA+ASDXOkHxYumCBv-T0gxTjdMVTu-c=33Lk-0TUgJ3WGUn2DVQ@mail.gmail.com>
 <CAD=FV=UKTDFwq3PSdpPmShRcOtZaH1mU=2H-ynoG4VooV=rKVQ@mail.gmail.com>
In-Reply-To: <CAD=FV=UKTDFwq3PSdpPmShRcOtZaH1mU=2H-ynoG4VooV=rKVQ@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 7 May 2019 09:48:00 -0700
X-Gmail-Original-Message-ID: <CA+ASDXMOmD+Wp5wfWU_1m+eEKhGTz62Ru1TJhH7Cea_CKa9PHw@mail.gmail.com>
Message-ID: <CA+ASDXMOmD+Wp5wfWU_1m+eEKhGTz62Ru1TJhH7Cea_CKa9PHw@mail.gmail.com>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_094817_683403_B7AAFE50 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 Anton Vorontsov <anton@enomsg.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Guenter Roeck <groeck@chromium.org>, Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 9:25 AM Doug Anderson <dianders@chromium.org> wrote:
> On Mon, May 6, 2019 at 2:40 PM Brian Norris <briannorris@chromium.org> wrote:
> > The last part of the sentence technically isn't true -- the original
> > bindings (notably, with no DT maintainer Reviewed-by) didn't specify
> > where such a node should be found:
> >
> > 35da60941e44 pstore/ram: add Device Tree bindings
> >
> > so child-of-root used to be a valid location. But anyway, this code is
> > just part of a heuristic for "old DT" (where later bindings clarified
> > this), so it still seems valid.
>
> I agree that it was unclear in the past, but it is true that being
> under the root node is not according to the _current_ upstream
> bindings, right?  ;-)

Sure, I suppose. Although, given the general ABI policy around DT, it
seems to me that something that was "according to" an old binding
cannot really be made "no longer" according to the binding. It can be
discouraged, and removed from new DTs, but it doesn't really become
*wrong*.

But our DT was definitely *not* according to even the (un-reviewed)
merged binding. So I'm mostly mincing words here.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
