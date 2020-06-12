Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177F91F79D9
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jun 2020 16:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WhFs7jDtMlnVXVrBobSa+Pl3AtA4FqrFNl9+0314RQ=; b=DEHW6R35zfrDLu
	9cY4GhmnWfzdejealo+RfH4laVgljGXL7tsITPUlyCnCPHCfFOKZPtuJG6PfXRP9gr3fBZ6vEzyl9
	AB1PLbOzmgFx2KuX19A6O/CVPelXwuy1iAwq4FL5qEGnZMGXYJFO/5L/VTTzpterxC81eUFPB1w+4
	wQyHDQS3aQGUMoXHHS/rjeMv1StuOsoHj76LEULceRl9QpfQRsc2CzaTcATTVvd3llTiPVE5z0TxP
	WvtrFbfRo4YyCufStK6Iq/tmUQvBkcXmCkrgNonZ5fbFbXE2eRD38oQNlhf4y2AfzEk27T0XPvjEI
	S7X9TNwQTgEHdF7LApSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkis-00044t-H4; Fri, 12 Jun 2020 14:31:58 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjkip-000440-CC
 for linux-rockchip@lists.infradead.org; Fri, 12 Jun 2020 14:31:57 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id jkiWj7pG1ZgWWjkiZjWPog; Fri, 12 Jun 2020 16:31:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1591972306; bh=nCym+V68URqljB+zF0jxDoG5uZ9OAURpMHuY+4kVtNA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=Ek25y6ooiVKrHsLtNoW2msBBEPPbmzkTtVlBE47CV/ciG+iatFdT6vGmuWS0SvSUl
 xx4VUC3/8wTt9TZ+EY6fiFQ82WIEmE6tsyMS9wyh6ef6GKFZLrwY1+M/Jvcq5c0tMv
 ZQQCXgKEpo83ayN9/NIyx4NyS0lESXPd6YEUNM51OgA5JD8FOvOKNo/H0P8zaWdMr4
 aAbBYaKrc7Bg5UhrGi8+v02T/ogLkcA9q/6n3uZONDUeH5fKxtBEdSs3LL5bPXc6vf
 KcSHXv0v1kYVap2GRvhatTGV/rKzC/MgOk9EJS+o/HVhQQPb2Rt3M8rQS/qZp/Dc4K
 6KcjRzJbA/lQw==
Subject: Re: [RESEND PATCH v3 0/6] media: staging: rkisp1: bugs fixes and vars
 renames
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
References: <20200611154551.25022-1-dafna.hirschfeld@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <2f0f7297-6067-9af0-c544-fc7defad943d@xs4all.nl>
Date: Fri, 12 Jun 2020 16:31:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200611154551.25022-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfGmSocrPpAgHoUy6j0hE9l1Ucx0Lv4acvA1yIyIkDkq0MbHONKkz/0iOqaoMHY1142snEcuQGdyLW+1L02uMnPN+/5ecD/x8fIG4q1cmzYiJ8frhEiBo
 Mhcoi6iY0CDU6hDEc9ADh32WYf8DcRQnD0VDIcmD1cfItpYaUw+CDdITL3PZKPzPZIts2ABlmuNoSIHBnILYr0GJjO/6Uj6Iagg7F6FjCFlfldoTWczNVrtr
 Jyg4SZybRevmK3yjQotSpXSIYNY40CEBVmCzsG/c0Apl5w6y9LzuZ6nzfcRDps6w7Ad5h+9pitHpq0UAt+a3IuN3TmYhMWB9DafeJ06vpEQy1j+KAV5xl0L7
 8KEwGfasgaZXpx1yKBUsoI9lpqJROqdr1JkRRKOt7mHwf9Q2xNzBg77s5wM4sNRLpsP/XmfZSxr3i8YhcecmKO+FTYHEbdGewrZr3ULKICPA3VV/3bBFCOGU
 efR+lrgfth1aK0TK9uyfB0WmKzrWFM/AWB7KWBz8RFjS6Lspz6+fNpqbm0sBwzG1sVs1Dkm7hoELFitY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_073155_844440_144BFEF5 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

(dropped the CC to stable)

Dafna,

Can you repost this an another RESEND, but without the CC to stable?

That will make it easier to review otherwise any reply would go to stable
as well and just annoy Greg :-)

If you need patches to go to stable, then add a Cc: line to stable after your
Signed-off-by tag. When the patch is merged into the mainline kernel it will
be automatically Cc-ed to stable.

Regards,

	Hans

On 11/06/2020 17:45, Dafna Hirschfeld wrote:
> RESEND the patchset because I forgot to add the first two patches
> to the set
> 
> The first two patches in this patchset are two bug fixes related to the enumeration and
> settings of the sink format of the resizer entity.
> The next 3 patches are renaming/removing macros and variables.
> patch 6 adds documentation to the struct rkisp1_isp_mbus_info
> 
> changes from v2:
> - patch 3 is new - remove macro RKISP1_DIR_SINK_SRC since the code is more readable without it.
> - patch 5 - rename 'direction' to 'isp_pads_mask' instead of 'isp_pads_flags'
> - patch 6 is new - add documentation of the struct 'rkisp1_isp_mbus_info'
> 
> changes from v1:
> - added "Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
> to the commit log of the first two patches.
> - added two patches. One patch rename the macros "RKISP1_DIR_*"
> to "RKISP1_ISP_SD_*", another that rename the field 'direction'
> in 'struct rkisp1_isp_mbus_info' to 'isp_pads_flags'
> 
> Dafna Hirschfeld (6):
>   media: staging: rkisp1: rsz: supported formats are the isp's src
>     formats, not sink formats
>   media: staging: rkisp1: rsz: set default format if the given format is
>     not RKISP1_DIR_SRC
>   media: staging: rkisp1: remove macro RKISP1_DIR_SINK_SRC
>   media: staging: rkisp1: rename macros 'RKISP1_DIR_*' to
>     'RKISP1_ISP_SD_*'
>   media: staging: rkisp1: rename the field 'direction' in
>     'rkisp1_isp_mbus_info' to 'isp_pads_mask'
>   media: staging: rkisp1: common: add documentation for struct
>     rkisp1_isp_mbus_info
> 
>  drivers/staging/media/rkisp1/rkisp1-common.h  | 18 ++++++-
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 50 +++++++++----------
>  drivers/staging/media/rkisp1/rkisp1-resizer.c |  6 +--
>  3 files changed, 43 insertions(+), 31 deletions(-)
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
