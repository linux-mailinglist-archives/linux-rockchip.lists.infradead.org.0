Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7351DC310
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 May 2020 01:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o82pf7W46Eb81dqmHKvjCurlrsv9xfRBUhfd5WfW0cc=; b=fVEi+zH2Bbqvn5
	1pb7QNu7RZiC/jYbIv/LXQquhBn8zfs5rjhZKIt2GCprkfGVHCDlm9eL0fKyoLaF3hne8xYMx+n7D
	mg3c/08z54X1a20IQIGx0RMi07Y7WlzD+G9+zva5JzHZpltR1p/EoXOjM19Xzo7MXuoEB+qVpJ1yq
	wSWpvu9og9IAUPMfVORB7LOF4vEs3+6BCOXQpve97hgt1EQUkwnrPz7X7S4dXkI/mW6S093zLdgtN
	TAYa7ZSmHCzRA6QkZWMFwjXuEGpdrX4748hIjW8VWKKRweOU/V+fKFWb4gbQz5rQ5eUmD7w7tyLCP
	+QqmIIfapmkyPjM30F5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbYKH-00027v-RX; Wed, 20 May 2020 23:40:41 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbYKE-000279-NY
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 23:40:40 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id DE56B24D;
 Thu, 21 May 2020 01:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1590018035;
 bh=PkepgfIObXpxjO2jKXomny694GUGSZ+ia9lpedJ1Opw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W6H3rXNX8oIglTMuZ1Na1YAoXYOGb3MCQ+HWnIhXmFLDcnaxQaAbur8JZ29CbZ0St
 eTH3pZOP3KAUdyD2znbgcmu8Q2N2pc+KO0kFMH6C56240k+vFjeOFHwDMKE0qBud7T
 uesdCiAgaSZNgDuSQBsVu852JFz5O98ZUsZl7F+A=
Date: Thu, 21 May 2020 02:40:23 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 3/5] media: staging: rkisp1: stats: use spin_lock_irqsave
 for irq_lock
Message-ID: <20200520234023.GC25474@pendragon.ideasonboard.com>
References: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
 <20200512120522.25960-4-dafna.hirschfeld@collabora.com>
 <2d3f52d2-73d7-1e8d-eee3-669012854491@collabora.com>
 <5c76ffe9-db3e-20a0-f280-75ded6c72e2c@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c76ffe9-db3e-20a0-f280-75ded6c72e2c@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_164038_916948_F1115F59 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On Wed, May 20, 2020 at 09:22:29PM +0200, Dafna Hirschfeld wrote:
> On 20.05.20 13:11, Helen Koike wrote:
> > On 5/12/20 9:05 AM, Dafna Hirschfeld wrote:
> >> Currently 'spin_lock' is used in order to lock the 'irq_lock'.
> >> This should be replaced with 'spin_lock_irqsave' since it is
> >> used in the irq handler.
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >> ---
> >>   drivers/staging/media/rkisp1/rkisp1-stats.c | 5 +++--
> >>   1 file changed, 3 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
> >> index 12998db955e6..5578fdeb8a18 100644
> >> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
> >> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
> >> @@ -403,9 +403,10 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
> >>   	struct rkisp1_device *rkisp1 = stats->rkisp1;
> >>   	struct rkisp1_isp_readout_work *work;
> >>   	unsigned int isp_mis_tmp = 0;
> >> +	unsigned long flags;
> >>   	u32 val;
> >>   
> >> -	spin_lock(&stats->irq_lock);
> >> +	spin_lock_irqsave(&stats->irq_lock, flags);
> > 
> > Since you are moving this function to a threaded irq handler, you won't be in interrupt context.
> > 
> > The spin_lock_irqsave() function disable interrupts for the critical section, are you sure this is
> > required?
>
> Hi,
> The lock is also used in the hard irq handler in the patch that moves the statistics to threaded interrupt.
> The code in the hard irq iterates the buffers queue to find the next buffer available and set the flags of
> the ready statistics on it.

The rules about spinlocks are as follows.

If the lock is never used in an interrupt handler context (or similar
context, such as a timer handler for instance), then you can use
spin_lock(). The reason is that, in such cases, a section covered by
spin_lock()/spin_unlock() will not be preempted on the same CPU by a
section that could try to take the same lock. This also applies to locks
that are only used in interrupt contexts where interrupts are guaranteed
to be disabled. To put it differently, if there's no risk that a
spinlock-covered section will be preempted by code that will try to take
the same lock, spin_lock() is enough.

Otherwise, you should use spin_lock() in code that is guaranteed to run
with interrupts disabled (such as hard IRQ handlers, or code that called
after another spin_lock_irq() or spin_lock_irqsave() on another lock),
spin_lock_irq() in code that is guaranteed to run with interrupts
enabled (such as code paths from userspace where you can guarantee
interrupts haven't been disabled by, for instance, a spin_lock_irq() in
the call stack), and spin_lock_irqsave() when you're not sure.

There's a tendency to always use spin_lock_irqsave() just to make sure,
and it can indeed avoid potential issues when code is later refactored
and assumptions that lead to the selection of the propery spin_lock*()
variant change. That's a bit idea in paths where latency is critical,
but should otherwise not be too much of a problem.

In this patch, as rkisp1_stats_isr() is run in a hard IRQ context with
interrupts disabled, there's no need to use spin_lock_irqsave(),
spin_lock() is totally fine.

> >>   	val = RKISP1_STATS_MEAS_MASK;
> >>   	rkisp1_write(rkisp1, val, RKISP1_CIF_ISP_ICR);
> >> @@ -435,7 +436,7 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
> >>   	}
> >>   
> >>   unlock:
> >> -	spin_unlock(&stats->irq_lock);
> >> +	spin_unlock_irqrestore(&stats->irq_lock, flags);
> >>   }
> >>   
> >>   static void rkisp1_init_stats(struct rkisp1_stats *stats)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
