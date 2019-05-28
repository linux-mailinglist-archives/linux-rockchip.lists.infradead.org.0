Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0F02CAA2
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 17:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgp4sp5JYW8ozetOckStLzhecbLhhuyFVKJx6088gdE=; b=pbt7e57yMt4sC9
	YoKUc8Ew7mk2DPM1zFlZVx/+/cTV1zcoqtdj10VLo1r4ePCTTTKjXJylpFEAhHXXPIzdJb1kmkmmi
	b+Uuo4l7wOYKEnqtECfc+aM4ADszCwZ1xx12aUSOhuWx2OVEs5Xt3UU0TaePGv/D/XAmu0ChrO2lE
	NnRAfpQ0roKZ8rDPLM0ldgTyS3wVRtfifbvLbfh4UxwaksCyw+nfRzhBPSjPMlNb8orDjSUNJu0KK
	UVoyJFvbZP4O+/9ONq+cBELfZEDey6aBDC2l2MP55BKx9l/Psp0jXRu7ZRFF7IMZChZ4GSf6my72q
	0uPbLUZoEQUOuexVCEGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeM3-0007DP-Im; Tue, 28 May 2019 15:49:35 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeLy-0007Cv-Hu
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 15:49:33 +0000
Received: by mail-vs1-xe41.google.com with SMTP id l20so480383vsp.3
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 08:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rVVCM3oss6fFLEowwE8V1IlUxZzOfvY2hKZ39Ilquf4=;
 b=IqZUUEJieiqEbr+TQYYtAXgNVwAK7MzBBm9XlY9GGI+WKamSi1KFzW43xncmxVl8Ui
 N5P4dPR+/E+LhBunyC95WAbkS0Og8TTm+OpBRx5yLU8NnS++izYync66K3+ssPoVmVBp
 41R+hbkwY2q8btHusadzE8i4NyCimBvpQ5KV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rVVCM3oss6fFLEowwE8V1IlUxZzOfvY2hKZ39Ilquf4=;
 b=ovoi8WJ2JXRtwilzhtt6za1CzGqlxfhfl6/r7jt+sykQ7830AUlHBVy70oXdP7BBF1
 h1FCugcSlyBS1u04179rWYm+fq8w7PTyiOjMp3FJptsyo3K0Z7IZ4OCht2VnZ83Qj6Rf
 HmXs9uvVelBV4cZ50LapZbJ0myDtjgPmOquinjYIshU7ha+8JUnSTFQZBh+oNIVp50gs
 OzOkRo8fyGjgYe1j9IWdRLpIKpQojUTutQcCwwBd7elV7I8AjnE7hfR7nq0bMTKV9L1m
 WkfsoagEneaiob0RtfSVTiXbWUQOD/nfv7UY1ZlXSRnQoakvhhWIetJ1ILH46XBUDT4/
 /x7Q==
X-Gm-Message-State: APjAAAW1ewyIzh0FHuP1AEF+Gv5iVrWuxr5ljLtUM4+ZprNdFwA4OwvL
 duHfi0wHN3aYn7Oo6qebVzmUYlrjzIk=
X-Google-Smtp-Source: APXvYqxHLlI5s5SclFcu5wO7j6tL4/hTd46Qt9jb7FmgApZHUrjPNT37W7GaK1OkxDvdAIQRZwoaig==
X-Received: by 2002:a67:d806:: with SMTP id e6mr56439454vsj.43.1559058567707; 
 Tue, 28 May 2019 08:49:27 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com.
 [209.85.217.46])
 by smtp.gmail.com with ESMTPSA id d78sm9412863vke.41.2019.05.28.08.49.27
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 08:49:27 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id d128so441675vsc.10
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 08:49:27 -0700 (PDT)
X-Received: by 2002:a67:f60b:: with SMTP id k11mr68126066vso.111.1559058141025; 
 Tue, 28 May 2019 08:42:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190517225420.176893-1-dianders@chromium.org>
 <20190517225420.176893-3-dianders@chromium.org>
 <05af228c-139b-2b7f-f626-36fb34634be5@broadcom.com>
 <4f39e152-04ba-a64e-985a-df93e6d15ff8@intel.com>
 <aa8e526f-b382-f3b7-74a5-e0fee09ae096@broadcom.com>
 <2d6fa51d-27af-4f90-2bd6-144112ce75ad@intel.com>
In-Reply-To: <2d6fa51d-27af-4f90-2bd6-144112ce75ad@intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 28 May 2019 08:42:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XV1oudf-xW_s9CQMgF7MryX-UJRrqsUFDQE0DF8Yf80w@mail.gmail.com>
Message-ID: <CAD=FV=XV1oudf-xW_s9CQMgF7MryX-UJRrqsUFDQE0DF8Yf80w@mail.gmail.com>
Subject: Re: [PATCH 2/3] mmc: core: API for temporarily disabling
 auto-retuning due to errors
To: Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_084930_592016_B626C7AC 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 Arend Van Spriel <arend.vanspriel@broadcom.com>, Martin Hicks <mort@bork.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 LKML <linux-kernel@vger.kernel.org>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Double Lo <double.lo@cypress.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Avri Altman <avri.altman@wdc.com>, Matthias Kaehlcke <mka@chromium.org>,
 Ritesh Harjani <riteshh@codeaurora.org>, Wright Feng <wright.feng@cypress.com>,
 Jiong Wu <lohengrin1024@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, May 28, 2019 at 4:45 AM Adrian Hunter <adrian.hunter@intel.com> wrote:
>
> On 28/05/19 2:21 PM, Arend Van Spriel wrote:
> >
> >
> > On 5/28/2019 12:04 PM, Adrian Hunter wrote:
> >> On 26/05/19 9:42 PM, Arend Van Spriel wrote:
> >>> On 5/18/2019 12:54 AM, Douglas Anderson wrote:
> >>>> Normally when the MMC core sees an "-EILSEQ" error returned by a host
> >>>> controller then it will trigger a retuning of the card.  This is
> >>>> generally a good idea.
> >>>
> >>> Probably a question for Adrian, but how is this retuning scheduled. I recall
> >>> seeing something in mmc_request_done. How about deferring the retuning upon
> >>> a release host or is that too sdio specific.
> >>
> >> Below is what I have been carrying the last 4 years.  But according to
> >> Douglas'
> >> patch, the release would need to be further down.  See 2nd diff below.
> >> Would that work?
> >
> > That makes sense. The loop is needed because the device can be a bit bone
> > headed. So indeed after the loop the device should be awake and able to
> > handle CMD19.

IMO I'd rather not _defer_ the re-tuning.  I believe the correct thing
is to not schedule the re-tuning at all in response to the IO errors.
That's what my patch does.

Specifically the IO errors that come up in this case are not due to
being "out of tune".  They are due to the fact that the other SDIO
card may be in a transitory state and putting garbage on the bus.
Scheduling a retuning for later would be just a waste of time and
needlessly tie up the bus for the retune.

...or am I confused?


> What if tuning is needed to read SBSDIO_FUNC1_SLEEPCSR successfully?

Personally I think this would be pretty unlikely.  If we're at this
point we've already talked to the card quite a bit so we should have a
tuning that's pretty good.  If we're just slightly out of tune then we
should still get through the loop with a few retries and then we can
detect that we're out of tune later, with a more reliable command.

However, if you're worried about this, I can always re-enable the old
behavior if we have already looped a few times.  I suppose I could
increase the loop duration/count slightly too...  Please let me know
one way or the other.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
