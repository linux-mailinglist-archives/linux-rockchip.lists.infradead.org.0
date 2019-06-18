Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFFA49A38
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 09:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MQKI6nk8FfXfYtiwmkY0xm6G5lkDV03KFz0CLS6zxk=; b=ZO+ieSX+STSxii
	AB+r5Z3ZRltGB/rJMdV0C8wvRa6/dcqE9MnS9WeWPZmQkwsjT9tnj5Yhu3eq4bP2oBCeQPd55Rb3u
	dC4TlP6+2Gtoc0Y+nV2OmRSYCbqtCNJUI3esnRYIru30k4qE82fs5cpHuE4ZkU9EdFYNHP82jt8dv
	zkUc9Inj1ELWdbJSqTlNbQO5udWWaslO1NpMmF3EmmX7YoXb2cSZtwl5v4fOk1YJFVOXKyfTnl3tj
	XHmUpnqyQUrwp5wPb4gnCDiSdzxPr5i+n0+65Xzg+lMhfgPbk+MNKJG23GC0yUl0e5jbOoIVD6ddw
	1CMWodJ2lmgxXPd+qVuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8MV-0007D8-Sy; Tue, 18 Jun 2019 07:16:59 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8MR-0006xY-LC
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 07:16:57 +0000
Received: by mail-io1-xd42.google.com with SMTP id k20so27341533ios.10
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jun 2019 00:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AByic1r7YQorInpfeAf1g+uD47UpoUENMHsiKWVnD60=;
 b=ShRZrIUyFWDe9pgsCLZ4UeQaqRgNQNck4vfhBiIqORRPtAyTKcIm11pbech1ClXVTN
 fWHNzR+jWC14V69NaesjdZRTGsvIZZujabLRRahB2OkVoquXmvC8KF9d527WBv+PlQqx
 WkUi/+TbXqmsCL4B+F70r74Hrjeico+JoDQZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AByic1r7YQorInpfeAf1g+uD47UpoUENMHsiKWVnD60=;
 b=HCcSX6eFoy8MdvMw95HgxmQjMYqDL7u74PHAvA2UeXrjZd9w4OCIf4VPAOhxx3AOd+
 +9W95kkqf34tipy2betHjLWr2XciO7LoseRFF1HPL5uOsf+XUvT4U3y2qoAoFcsdPEjg
 slervEBwg12+JtDPZd3zM1i4vTX97G8JDCmVgS3kLXl7C+nbjJ1it/xaqQPB6CJCoAs9
 5U/s1Uvs3tfebxol9HkZ1OoBWANo0RloJ0ieAScGH8o/0DMLAtfrv3foKsyuH+3oOMhR
 b7ydgHHZvf4PATXamizrg+vuaEVqJBdxQS+RzR7eiB169r1vB3a+ZjyJcPxcXyDozuVT
 Rn6w==
X-Gm-Message-State: APjAAAUckyLApGc12E9QADPyYDL9U7UifvuAC3ZmrKb4KelBv+++pFPR
 9Z1MRImoI5DcmQsJA9Hc+Kgb02ZkfjTIPYcbzre5lQ==
X-Google-Smtp-Source: APXvYqwzUYKyT1dYr5yLv2fwirfhd1/Mafs+QhbBrUPQoWT4dPYXjjYIhoqlF4xcNc1OBmjkyRYC4iwc4auHJf3/c7E=
X-Received: by 2002:a5e:8618:: with SMTP id z24mr4155467ioj.174.1560842214977; 
 Tue, 18 Jun 2019 00:16:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
 <CAMty3ZB4KBKnrhxSG2EsQDg1fAaEDQ_T1swVnZiaKcbtkKc=OA@mail.gmail.com>
 <853f6ec1-a818-ae69-35b5-ef36fadc9ca1@rock-chips.com>
In-Reply-To: <853f6ec1-a818-ae69-35b5-ef36fadc9ca1@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 18 Jun 2019 12:46:43 +0530
Message-ID: <CAMty3ZA7W5eqx08NPgaJwq32vDWuafcqtKWg59XZEzi77QYSmA@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] rockchip: rk3399: Make u-boot.itb as BUILD_TARGET
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_001655_714360_7EC24592 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 U-Boot-Denx <u-boot@lists.denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 12:40 PM Kever Yang <kever.yang@rock-chips.com> wrote:
>
> Hi Jagan,
>
>
> On 06/13/2019 02:53 PM, Jagan Teki wrote:
> > Hi Kever,
> >
> > On Wed, May 8, 2019 at 12:23 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >> RK3399 TPL changes are merged recently which I was thinking
> >> of waiting for next MW. so this series skip binman changes
> >> from previous version[1] and have only BUILD_TARGET changes.
> >>
> >> BINMAN changes would need another rework, where we need to consider
> >> the TPL image as well and that would send separately.
> >>
> >> CHanges for v3:
> >> - skip binman changes
> >> - rebase on u-boot-rockchip/master
> >>
> >> [1] https://patchwork.ozlabs.org/cover/1092198/
> >>
> >> Jagan Teki (6):
> >>   Makefile: clean image.map
> >>   Makefile: clean bl31_*.bin
> >>   travis.yml: Add pyelftools install entry
> >>   rockchip: rk3399: Get bl31.elf via BL31
> >>   board: puma: Get bl31.bin via BL31 and rk3399m0.bin via PMUM0
> >>   Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip
> > I think you hold for this with puma changes? any further comments
> > please let me know.
> >
>
> Yes, one reason is not get response from puma board.
> And I think this does not break the board support but maybe
> break the build process if not all the environment has export as expected?

It can't break the build, for not exporting cases the script will
create dummy bl31 elf and the bl31 variable assign it and finally
trigger warning. fyi, the else statement on this patch [1] does what I
mentioned.

[1] https://patchwork.ozlabs.org/patch/1096505/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
