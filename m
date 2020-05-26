Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7D21E2AB4
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 20:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsGFyzzE0MI1blRNFpdoNwMNYXhMcjTylTs562XejnE=; b=a2vOlq53wu9V/N
	dD0jQST8lcHDoO3QNkLNThewO6zAev26JrrpP5ypRr3X8GAbEnJsIeoMqr0v15zaxI+HB2MwrjPWO
	C7A+HrgKDwdDGA8o8MFbFWGRFn5xvxkfiqQHRC+6exWUE7RUhhbKvjopOg4K6RR98A3SR0nOyBUFk
	wwrtB4n6G5OTtXPe6iLvvp5lhfovE0p9LgzIan4V6gkeGE5YOCd2kuCGwxOk5AaUHXte3V44x0ohB
	btCH2aT2wm4AYJfA9jm9G+YdxnG5IZfSWjlyoVDClimCLreT6xlX8iOqUjMh4wgi3pTQBcKTMBQ5+
	qtV/R/LCSqAaP0PzLbqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdemK-0001qQ-Ha; Tue, 26 May 2020 18:58:20 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdemG-0001p7-Dg
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 18:58:19 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 90094814;
 Tue, 26 May 2020 20:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1590519487;
 bh=mK4ie8ARldRAo4vx2hQ/9AxMRRPVVEkg+ihU48dAit0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EW27tooP7QutWZQonvmR5h0C7QFQm6puQ38EDdSLsVHsMEYZ3y7Ojsgngxd42jb9Z
 HGeRezGi5tIFl9udCqpUA4Zt49sbKsvNS9JKZTZiFswohEl0Q3pywGxDjA+sSsNeei
 TRefN8oGcT1tuwLj22R89rahk3FaDVpGrNNdcawo=
Date: Tue, 26 May 2020 21:57:54 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v4 0/5] media: add v4l2_pipeline_stream_{enable,disable}
Message-ID: <20200526185754.GA25880@pendragon.ideasonboard.com>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <1c8bd467-5a9c-7285-ec23-d0d864a5f938@collabora.com>
 <CAAFQd5BW9TF0iMRPCUwk3oZn-WrisMW794EuwfqZRTkmNqeKoA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5BW9TF0iMRPCUwk3oZn-WrisMW794EuwfqZRTkmNqeKoA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_115816_608518_F79046AC 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: niklas.soderlund@ragnatech.se--annotate,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Tomasz,

On Tue, May 26, 2020 at 06:11:00PM +0200, Tomasz Figa wrote:
> On Fri, May 22, 2020 at 11:06 AM Helen Koike <helen.koike@collabora.com> wrote:
> > On 5/22/20 4:55 AM, Dafna Hirschfeld wrote:
> > > Hi,
> > > This is v4 of the patchset that was sent by Helen Koike.
> > >
> > > Media drivers need to iterate through the pipeline and call .s_stream()
> > > callbacks in the subdevices.
> > >
> > > Instead of repeating code, add helpers for this.
> > >
> > > These helpers will go walk through the pipeline only visiting entities
> > > that participates in the stream, i.e. it follows links from sink to source
> > > (and not the opposite).
> > > For example, in a topology like this https://bit.ly/3b2MxjI
> > > calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
> > > .s_stream(true) for rkisp1_resizer_selfpath.
> > >
> > > stream_count variable was added in v4l2_subdevice to handle nested calls
> > > to the helpers.
> > > This is useful when the driver allows streaming from more then one
> > > capture device sharing subdevices.
> >
> > If I understand correctly, this isn't  true anymore right? Nested calls aren't
> > possible anymore since this version doesn't contain stream_count in struct v4l2_subdevice.
> >
> > Documentation of v4l2_pipeline_stream_*() should also be updated.
> >
> > Just to be clear, without the nested call, vimc will require to add its own
> > counters, patch https://patchwork.kernel.org/patch/10948833/ will be
> > required again to allow multi streaming.
> >
> > Also, patch "media: staging: rkisp1: cap: use v4l2_pipeline_stream_{enable,disable}"
> > is cleaner in the previous version (with stream_count in struct v4l2_subdevice).
> >
> > All drivers that allows multi streaming will need to implement some special handling.
> >
> > Adding stream_count in struct v4l2_subdevice still seems cleaner to me. I'd like to hear
> > what others think.
> 
> I certainly would see this reference counting done in generic code,
> because requiring every driver to do it simply adds to the endless
> amount of boiler plate that V4L2 currently requires from the drivers.
> :(
> 
> I wonder if it wouldn't be possible to redesign the framework so that
> .s_stream() at the subdev level is only called when it's expected to
> either start or stop this particular subdev and driver's
> implementation can simply execute the requested action.

I'd very much like that. Note that I think a few drivers abuse the on
parameter to the function to pass other values than 0 or 1. We'd have to
fix those first (or maybe it has been done already, it's been a long
time since I last checked).

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
